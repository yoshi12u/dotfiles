{ config, pkgs, ... }:
{
  programs.home-manager.enable = true;

  home.packages = [
    pkgs.git-filter-repo
    pkgs.unzip
    pkgs.gcc
    pkgs.cargo
    pkgs.wget
    pkgs.procs
    pkgs.ghq
    pkgs.viddy
  ];
  home.sessionVariables = {
    LANG = "ja_JP.UTF-8";
    VISUAL = "nvim";
    EDITOR = "nvim";
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
    "git/commit-template.txt" = {
      source = ./config/git/commit-template.txt;
    };
    "git/ignore" = {
      source = ./config/git/gitignore;
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
    initContent = ''
      zvm_after_init_commands+=("bindkey '^p' history-substring-search-up && bindkey '^n' history-substring-search-down")
      source ${config.xdg.configHome}/zsh/.zshrc
    '';
  };
  programs.nushell = {
    enable = true;
    configFile.source = ./config/nushell/config.nu;
    envFile.source = ./config/nushell/env.nu;
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
  programs.eza = {
    enable = true;
    enableZshIntegration = true;
    enableNushellIntegration = true;
    colors = "auto";
    icons = "always";
    git = true;
    extraOptions = [
      "--ignore-glob=.git|.DS_Store"
    ];
  };
  programs.lazygit = {
    enable = true;
    settings = {
      notARepository = "skip";
    };
  };
  programs.carapace = {
    enable = true;
    enableZshIntegration = true;
    enableNushellIntegration = true;
  };
  programs.git = {
    enable = true;
    delta.enable = true;
    extraConfig.include.path = "${config.xdg.configHome}/git/config.include";
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
    enableNushellIntegration = true;
  };
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
    enableNushellIntegration = true;
  };
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
    enableNushellIntegration = true;
  };
  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
    enableNushellIntegration = true;
    silent = true;
    nix-direnv.enable = true;
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
  programs.gh = {
    enable = true;
    settings = {
      prompt = "enabled";
      clone_path = "${config.home.homeDirectory}/ghq";
    };
  };
  programs.mise = {
    enable = true;
    enableZshIntegration = true;
    enableNushellIntegration = true;
    globalConfig = {
      settings = {
        idiomatic_version_file_enable_tools = [ "python" ];
      };
    };
  };
}
