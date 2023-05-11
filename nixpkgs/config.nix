{

  packageOverrides = pkgs: with pkgs; {
    common = pkgs.buildEnv {
      name = "common";
      paths = [
        git
        neovim
    	  zsh
        coreutils
        findutils
        bat
        cargo
        rustc
        nodejs-19_x
        go
        kubectl
        kubectx
        (google-cloud-sdk.withExtraComponents [google-cloud-sdk.components.gke-gcloud-auth-plugin])
        telepresence2
        direnv
        fzf
        tmux
        k9s
        ripgrep
        cloud-sql-proxy
        ghz
        pgcli
        k6
        ddosify
        ffmpeg
        gh
        terraform
      ];
    };
  };
}
