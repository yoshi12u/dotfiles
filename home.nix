{ config, pkgs, ... }:
{
  home.username = "yoshimasauehara";
  home.homeDirectory = "/Users/yoshimasauehara";

  home.stateVersion = "24.05";

  home.packages = [
    pkgs.less
    pkgs.wget
    pkgs.git
    pkgs.ghq
    pkgs.zellij
    pkgs.zsh
    pkgs.starship
    pkgs.fzf
    pkgs.neovim
    pkgs.nerdfonts
    pkgs.zoxide
    pkgs.lazygit
    pkgs.ripgrep
    pkgs.bat
    pkgs.lsd
    pkgs.fd
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
  programs.home-manager.enable = true;
  programs.zsh = {
    enable = true;
    zplug = {
      enable = true;
      plugins = [
        { name = "zsh-users/zsh-autosuggestions"; }
        { name = "zsh-users/zsh-syntax-highlighting"; }
        { name = "zsh-users/zsh-completions"; }
        { name = "zsh-users/zsh-history-substring-search"; }
        { name = "Aloxaf/fzf-tab"; }
        { name = "hlissner/zsh-autopair"; }
        { name = "jeffreytse/zsh-vi-mode"; }
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
