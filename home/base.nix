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
    pkgs.procs
    pkgs.ghq
    pkgs.viddy
  ];
  home.sessionVariables = {
    LANG = "ja_JP.UTF-8";
  };
  xdg.configFile = {
    zsh = {
      source = ./config/zsh;
      recursive = true;
    };
    nvim = {
      source = ./config/nvim;
      recursive = true;
    };
    zellij = {
      source = ./config/zellij;
      recursive = true;
    };
    "git/config.include" = {
      source = ./config/git/config;
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
      source ${config.xdg.configHome}/zsh/.zshrc
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
  programs.gh = {
    enable = true;
    settings = {
      prompt = "enabled";
      clone_path = "${config.home.homeDirectory}/ghq";
    };
  };
  programs.wezterm = {
    enable = true;
    extraConfig = builtins.readFile ./config/wezterm/wezterm.lua;
    enableZshIntegration = true;
  };
  programs.carapace = {
    enable = true;
  };
  programs.git = {
    enable = true;
    delta.enable = true;
    extraConfig.include.path = "${config.xdg.configHome}/git/config.include";
  };
  programs.zellij = {
    enable = true;
    enableZshIntegration = true;
  };
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    extraLuaConfig = ''
      require("config.lazy")
    '';
  };
  programs.less = {
    enable = true;
  };
  programs.fd = {
    enable = true;
  };
  programs.bat = {
    enable = true;
  };
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
  };
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
    defaultOptions = [
      "--ansi"
      "--height 60%"
      "--reverse"
    ];
  };
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };
  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
    nix-direnv.enable = true;
  };
}
