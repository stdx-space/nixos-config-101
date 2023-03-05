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
  host = "127.0.0.1";
  port = 8081;
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
        The port range port..port+no_of_user-1 will be reserved.
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
        let
          getSystemdConfig = instanceCfg:
            {
              description = "VSCode server";
              wantedBy = [ "multi-user.target" ];
              after = [ "network-online.target" ];
              serviceConfig = {
                ExecStart = "${cfg.package}/bin/code-server --bind-addr ${host}:${toString port} " + lib.escapeShellArgs cfg.extraArguments;
                Restart = "on-failure";
                User = instanceCfg.user;
              };
            };
        in
        lib.listToAttrs (lib.mapAttrsToList (k: v: lib.nameValuePair "code-server@${k}" (getSystemdConfig v)) cfg.instances);
      services.caddy.virtualHosts =
        let
          getCaddyRootConfig = instanceCfg:
            {
              extraConfig = ''
                redir http://code.stdx.space/${instanceCfg.user}/
              '';
            };
          getCaddyProxyConfig = instanceCfg:
            {
              extraConfig = ''
                uri strip_prefix /${instanceCfg.user}
                reverse_proxy ${host}:${toString port}
              '';
            };
        in
        lib.listToAttrs (lib.mapAttrsToList (k: v: lib.nameValuePair "code.stdx.space:80/${v.user}" (getCaddyRootConfig v)) cfg.instances) //
        lib.listToAttrs (lib.mapAttrsToList (k: v: lib.nameValuePair "code.stdx.space:80/${v.user}/*" (getCaddyProxyConfig v)) cfg.instances)
      ;
    };
}
