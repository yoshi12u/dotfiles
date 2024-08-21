{ config, pkgs, ... }:
{
  programs.home-manager.enable = true;

  home.packages = [
    pkgs.unzip
    pkgs.gcc
    pkgs.nodePackages.npm
    pkgs.nodejs
    pkgs.cargo
    pkgs.wget
    pkgs.jq
    pkgs.less
    pkgs.git
    pkgs.ghq
    pkgs.lazygit
    pkgs.zsh
    pkgs.starship
    pkgs.fzf
    pkgs.neovim
    pkgs.zoxide
    pkgs.ripgrep
    pkgs.bat
    pkgs.lsd
    pkgs.fd
    pkgs.yazi
    pkgs.zellij
  ];
  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
    PAGER = "less";
    LANG = "ja_JP.UTF-8";
  };
  xdg.configFile = {
    nvim = {
      source = ./config/nvim;
      recursive = true;
    };
    git = {
      source = ./config/git;
      recursive = true;
    };
    zsh = {
      source = ./config/zsh;
      recursive = true;
    };
    zellij = {
      source = ./config/zellij;
      recursive = true;
    };
    "starship.toml" = {
      source = ./config/starship.toml;
    };
  };
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    historySubstringSearch.enable = true;
    autocd = true;
    antidote = {
      enable = true;
      plugins = [
        "Aloxaf/fzf-tab"
        "hlissner/zsh-autopair"
        "jeffreytse/zsh-vi-mode"
      ];
    };
    initExtra = ''
      zvm_after_init_commands+=("bindkey '^p' history-substring-search-up && bindkey '^n' history-substring-search-down")
      source ${config.home.homeDirectory}/.config/zsh/.zshrc
    '';
  };
  programs.ripgrep = {
    enable = true;
    arguments = [
      "--glob"
      "!git/*"
      "--glob"
      "!.git/*"
      "--smart-case"
      "--color=always"
    ];
  };
  programs.lsd = {
    enable = true;
    settings = {
      color = {
        when = "always";
      };
      icons = {
        when = "always";
      };
      ignore-globs = [
        ".git"
        ".DS_Store"
      ];
    };
  };
  programs.lazygit = {
    enable = true;
    settings = {
      notARepository = "skip";
    };
  };

}
