-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/yoshimasauehara/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/yoshimasauehara/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/yoshimasauehara/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/yoshimasauehara/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/yoshimasauehara/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["AnsiEsc.vim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/AnsiEsc.vim",
    url = "https://github.com/vim-scripts/AnsiEsc.vim"
  },
  ["Comment.nvim"] = {
    config = { 'require("Comment").setup({})' },
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\nM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14lazy_load luasnip.loaders.from_vscode\frequire\0" },
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-document-symbol"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-document-symbol",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-document-symbol"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-under-comparator"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/cmp-under-comparator",
    url = "https://github.com/lukas-reineke/cmp-under-comparator"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["coc-fzf"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/coc-fzf",
    url = "https://github.com/antoinemadec/coc-fzf"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["emmet-vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["flit.nvim"] = {
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\18labeled_modes\anv\14multiline\2\nsetup\tflit\frequire\0" },
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/flit.nvim",
    url = "https://github.com/ggandor/flit.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  fzf = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/fzf",
    url = "/opt/homebrew/opt/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["goyo.vim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/goyo.vim",
    url = "https://github.com/junegunn/goyo.vim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { 'require("indent_blankline").setup()' },
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["leap.nvim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/leap.nvim",
    url = "https://github.com/ggandor/leap.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "vim.g.neo_tree_remove_legacy_commands = true" },
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["notifier.nvim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/notifier.nvim",
    url = "https://github.com/vigoux/notifier.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { ' require("nvim-autopairs").setup({}) ' },
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/nvim-bqf",
    url = "https://github.com/kevinhwang91/nvim-bqf"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-cokeline"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rcokeline\frequire\0" },
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/nvim-cokeline",
    url = "https://github.com/noib3/nvim-cokeline"
  },
  ["nvim-colorizer.lua"] = {
    config = { "require('colorizer').setup {'css', 'javascript', 'vim', 'html'}" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-hlslens"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/nvim-hlslens",
    url = "https://github.com/kevinhwang91/nvim-hlslens"
  },
  ["nvim-lastplace"] = {
    config = { 'require("nvim-lastplace").setup({})' },
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/nvim-lastplace",
    url = "https://github.com/ethanholz/nvim-lastplace"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { 'vim.notify = require("notify")' },
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-pqf"] = {
    config = { 'require("pqf").setup({})' },
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/nvim-pqf",
    url = "https://gitlab.com/yorickpeterse/nvim-pqf"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-endwise"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/nvim-treesitter-endwise",
    url = "https://github.com/RRethy/nvim-treesitter-endwise"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-treesitter-textsubjects"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textsubjects",
    url = "https://github.com/RRethy/nvim-treesitter-textsubjects"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/joosepalviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-ufo"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/nvim-ufo",
    url = "https://github.com/kevinhwang91/nvim-ufo"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["promise-async"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/promise-async",
    url = "https://github.com/kevinhwang91/promise-async"
  },
  ["splitjoin.vim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/splitjoin.vim",
    url = "https://github.com/AndrewRadev/splitjoin.vim"
  },
  ["substitute.nvim"] = {
    config = { 'require("substitute").setup({})' },
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/substitute.nvim",
    url = "https://github.com/gbprod/substitute.nvim"
  },
  ["switch.vim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/switch.vim",
    url = "https://github.com/AndrewRadev/switch.vim"
  },
  ["tagalong.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/tagalong.vim",
    url = "https://github.com/AndrewRadev/tagalong.vim"
  },
  ["targets.vim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/targets.vim",
    url = "https://github.com/wellle/targets.vim"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0 colorscheme tokyonight-moon\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  undotree = {
    commands = { "UndotreeToggle" },
    config = { "vim.g.undotree_SetFocusWhenToggle = 1" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-abolish",
    url = "https://github.com/tpope/vim-abolish"
  },
  ["vim-bracketed-paste"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-bracketed-paste",
    url = "https://github.com/ConradIrwin/vim-bracketed-paste"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-edgemotion"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-edgemotion",
    url = "https://github.com/haya14busa/vim-edgemotion"
  },
  ["vim-emacscommandline"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-emacscommandline",
    url = "https://github.com/houtsnip/vim-emacscommandline"
  },
  ["vim-emoji"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-emoji",
    url = "https://github.com/junegunn/vim-emoji"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-eunuch",
    url = "https://github.com/tpope/vim-eunuch"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-qfreplace"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-qfreplace",
    url = "https://github.com/thinca/vim-qfreplace"
  },
  ["vim-ref"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-ref",
    url = "https://github.com/thinca/vim-ref"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-rooter",
    url = "https://github.com/airblade/vim-rooter"
  },
  ["vim-signature"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-signature",
    url = "https://github.com/kshenoy/vim-signature"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-startify",
    url = "https://github.com/mhinz/vim-startify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-textobj-entire"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-textobj-entire",
    url = "https://github.com/kana/vim-textobj-entire"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-textobj-user",
    url = "https://github.com/kana/vim-textobj-user"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["vim-trailing-whitespace"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-trailing-whitespace",
    url = "https://github.com/bronson/vim-trailing-whitespace"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  },
  ["vim-wordmotion"] = {
    config = { "vim.g.wordmotion_prefix = '<space>'" },
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-wordmotion",
    url = "https://github.com/chaoren/vim-wordmotion"
  },
  ["vimdoc-ja"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vimdoc-ja",
    url = "https://github.com/vim-jp/vimdoc-ja"
  },
  ["vista.vim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vista.vim",
    url = "https://github.com/liuchengxu/vista.vim"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-pqf
time([[Config for nvim-pqf]], true)
require("pqf").setup({})
time([[Config for nvim-pqf]], false)
-- Config for: substitute.nvim
time([[Config for substitute.nvim]], true)
require("substitute").setup({})
time([[Config for substitute.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
require("Comment").setup({})
time([[Config for Comment.nvim]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0 colorscheme tokyonight-moon\bcmd\bvim\0", "config", "tokyonight.nvim")
time([[Config for tokyonight.nvim]], false)
-- Config for: nvim-cokeline
time([[Config for nvim-cokeline]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rcokeline\frequire\0", "config", "nvim-cokeline")
time([[Config for nvim-cokeline]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
 require("nvim-autopairs").setup({}) 
time([[Config for nvim-autopairs]], false)
-- Config for: vim-wordmotion
time([[Config for vim-wordmotion]], true)
vim.g.wordmotion_prefix = '<space>'
time([[Config for vim-wordmotion]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
require("indent_blankline").setup()
time([[Config for indent-blankline.nvim]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
vim.g.neo_tree_remove_legacy_commands = true
time([[Config for neo-tree.nvim]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
vim.notify = require("notify")
time([[Config for nvim-notify]], false)
-- Config for: nvim-lastplace
time([[Config for nvim-lastplace]], true)
require("nvim-lastplace").setup({})
time([[Config for nvim-lastplace]], false)
-- Config for: flit.nvim
time([[Config for flit.nvim]], true)
try_loadstring("\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\18labeled_modes\anv\14multiline\2\nsetup\tflit\frequire\0", "config", "flit.nvim")
time([[Config for flit.nvim]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\nM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14lazy_load luasnip.loaders.from_vscode\frequire\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file UndotreeToggle lua require("packer.load")({'undotree'}, { cmd = "UndotreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType html ++once lua require("packer.load")({'nvim-colorizer.lua', 'tagalong.vim'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType css ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType vim ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "vim" }, _G.packer_plugins)]]
vim.cmd [[au FileType vue ++once lua require("packer.load")({'emmet-vim'}, { ft = "vue" }, _G.packer_plugins)]]
vim.cmd [[au FileType js ++once lua require("packer.load")({'emmet-vim'}, { ft = "js" }, _G.packer_plugins)]]
vim.cmd [[au FileType jsx ++once lua require("packer.load")({'emmet-vim'}, { ft = "jsx" }, _G.packer_plugins)]]
vim.cmd [[au FileType ts ++once lua require("packer.load")({'emmet-vim'}, { ft = "ts" }, _G.packer_plugins)]]
vim.cmd [[au FileType tsx ++once lua require("packer.load")({'emmet-vim'}, { ft = "tsx" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
