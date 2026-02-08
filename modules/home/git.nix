{
  pkgs,
  lib,
  ...
}: let
  onePassPath = "~/.1password/agent.sock";
in {
  programs = {
    git = {
      enable = true;
      settings = {
        user = {
          name = "Rothinnpanna";
          email = "114562780+Rothinnpanna@users.noreply.github.com";
        };
        init.defaultBranch = "main";
      };
      signing = {
        format = "ssh";
        key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIE+155BbTasaN9eXppwXTnE2TedcOZOJffvoqfdMVCB1";
      };


      extraConfig = {
        gpg = {
          format = "ssh";
          ssh = {program = "${lib.getExe' pkgs._1password-gui "op-ssh-sign"}";};
        };
        commit.gpgsign = true;
      };
    };

    ssh = {
      enable = true;
      extraConfig = ''
        Host *
            IdentityAgent ${onePassPath}
      '';
    };
  };
}
