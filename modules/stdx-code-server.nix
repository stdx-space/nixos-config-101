{ lib, pkgs, config, ... }:

let
  cfg = config.services.stdx-code-server;

  instancesOptions = { name, ... }: {
    options = {
      user = lib.mkOption {
        type = lib.types.str;
        example = "alice";
        default = "${name}";
        description = lib.mdDoc ''
          User account under which code-server runs
        '';
      };
    };
  };

  # assign port consecutively from cfg.port to cfg.port + no_of_instances - 1
  instancesCfg = lib.listToAttrs
    (lib.imap0
      (i: v: lib.nameValuePair v.name (v.value // {
        port = cfg.port + i;
      }))
      (lib.mapAttrsToList
        (k: v: lib.nameValuePair k v)
        cfg.instances));
in
{
  options.services.stdx-code-server = {
    enable = lib.mkEnableOption "management of stdx code-server";

    package = lib.mkOption {
      default = pkgs.code-server;
      defaultText = "pkgs.code-server";
      description = lib.mdDoc "Which code-server derivation to use.";
      type = lib.types.package;
    };

    host = lib.mkOption {
      default = "127.0.0.1";
      description = lib.mdDoc "The host-ip code-server to bind to.";
      type = lib.types.str;
    };

    port = lib.mkOption {
      default = 28000;
      description = lib.mdDoc ''
        The port where the first user's code-server runs.
        The port range port..port+no_of_instances-1 will be reserved.
      '';
      type = lib.types.port;
    };

    extraArguments = lib.mkOption {
      type = lib.types.listOf lib.types.str;
      default = [ "--disable-telemetry" ];
      description = lib.mdDoc "Additional arguments that passed to code-server";
      example = ''[ "--verbose" ]'';
    };

    instances = lib.mkOption {
      default = { };
      type = with lib.types; attrsOf (submodule instancesOptions);
      description = lib.mdDoc "code-server instances to be created automatically by the system.";
    };
  };


  config = lib.mkIf cfg.enable
    {
      services.caddy.enable = true;
      systemd.services =
        lib.mapAttrs'
          (name: instanceCfg: lib.nameValuePair "code-server@${name}" {
            description = "VSCode server";
            wantedBy = [ "multi-user.target" ];
            after = [ "network-online.target" ];
            serviceConfig = {
              ExecStart = "${cfg.package}/bin/code-server --bind-addr ${cfg.host}:${toString instanceCfg.port} " + lib.escapeShellArgs cfg.extraArguments;
              Restart = "on-failure";
              User = instanceCfg.user;
            };
          })
          instancesCfg;
      services.caddy.virtualHosts =
        lib.mapAttrs'
          (name: instanceCfg: lib.nameValuePair "code.stdx.space:80/${instanceCfg.user}" {
            extraConfig = ''
              redir http://code.stdx.space/${instanceCfg.user}/
            '';
          })
          instancesCfg //
        lib.mapAttrs'
          (name: instanceCfg: lib.nameValuePair "code.stdx.space:80/${instanceCfg.user}/*" {
            extraConfig = ''
              uri strip_prefix /${instanceCfg.user}
              reverse_proxy ${cfg.host}:${toString instanceCfg.port}
            '';
          })
          instancesCfg
      ;
    };
}
