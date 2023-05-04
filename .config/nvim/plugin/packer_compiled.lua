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
  ["Comment.nvim"] = {
    config = { 'require("Comment").setup({})' },
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    cond = { true },
    config = { "\27LJ\2\nM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14lazy_load luasnip.loaders.from_vscode\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    cond = { true },
    config = { "\27LJ\2\n`\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\vconfig\26alpha.themes.startify\nsetup\nalpha\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
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
  ["cmp-cmdline-history"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/cmp-cmdline-history",
    url = "https://github.com/dmitmel/cmp-cmdline-history"
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
  ["cmp-treesitter"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/cmp-treesitter",
    url = "https://github.com/ray-x/cmp-treesitter"
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
  ["diffview.nvim"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["emmet-vim"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["fidget.nvim"] = {
    cond = { true },
    config = { "\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vfidget\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  fzf = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf-lua"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/fzf-lua",
    url = "https://github.com/ibhagwan/fzf-lua"
  },
  ["gitsigns.nvim"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["goyo.vim"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/goyo.vim",
    url = "https://github.com/junegunn/goyo.vim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    cond = { true },
    config = { 'require("indent_blankline").setup()' },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lf.nvim"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/lf.nvim",
    url = "https://github.com/lmburns/lf.nvim"
  },
  ["lsp_signature.nvim"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lualine.nvim"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["marks.nvim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/marks.nvim",
    url = "https://github.com/chentoast/marks.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neo-tree.nvim"] = {
    cond = { true },
    config = { "vim.g.neo_tree_remove_legacy_commands = true" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/null-ls.nvim",
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
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-cokeline"] = {
    cond = { true },
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rcokeline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/nvim-cokeline",
    url = "https://github.com/noib3/nvim-cokeline"
  },
  ["nvim-colorizer.lua"] = {
    cond = { true },
    config = { "require('colorizer').setup {'css', 'javascript', 'vim', 'html'}" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lastplace"] = {
    config = { 'require("nvim-lastplace").setup({})' },
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/nvim-lastplace",
    url = "https://github.com/ethanholz/nvim-lastplace"
  },
  ["nvim-lspconfig"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-neoclip.lua"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/nvim-neoclip.lua",
    url = "https://github.com/AckslD/nvim-neoclip.lua"
  },
  ["nvim-notify"] = {
    cond = { true },
    config = { 'vim.notify = require("notify")' },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-pqf"] = {
    cond = { true },
    config = { 'require("pqf").setup({})' },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/nvim-pqf",
    url = "https://gitlab.com/yorickpeterse/nvim-pqf"
  },
  ["nvim-surround"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-treesitter"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
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
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/joosepalviste/nvim-ts-context-commentstring"
  },
  ["nvim-ufo"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/nvim-ufo",
    url = "https://github.com/kevinhwang91/nvim-ufo"
  },
  ["nvim-web-devicons"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
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
  ["project.nvim"] = {
    cond = { true },
    config = { "\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17project_nvim\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["promise-async"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/promise-async",
    url = "https://github.com/kevinhwang91/promise-async"
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
  ["symbols-outline.nvim"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["tagalong.vim"] = {
    cond = { true },
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
  ["toggleterm.nvim"] = {
    cond = { true },
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    cond = { true },
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0 colorscheme tokyonight-moon\bcmd\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  undotree = {
    commands = { "UndotreeToggle" },
    cond = { true },
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
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/vim-bracketed-paste",
    url = "https://github.com/ConradIrwin/vim-bracketed-paste"
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
  ["vim-emoji"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/vim-emoji",
    url = "https://github.com/junegunn/vim-emoji"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-eunuch",
    url = "https://github.com/tpope/vim-eunuch"
  },
  ["vim-floaterm"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/vim-floaterm",
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
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/vim-qfreplace",
    url = "https://github.com/thinca/vim-qfreplace"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
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
    cond = { true },
    config = { "vim.g.tmux_navigator_no_mappings = 1" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["vim-unimpaired"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  },
  ["vim-wordmotion"] = {
    config = { "vim.g.wordmotion_prefix = '<space>'" },
    loaded = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/start/vim-wordmotion",
    url = "https://github.com/chaoren/vim-wordmotion"
  },
  ["which-key.nvim"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["zinit-vim-syntax"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/yoshimasauehara/.local/share/nvim/site/pack/packer/opt/zinit-vim-syntax",
    url = "https://github.com/zdharma-continuum/zinit-vim-syntax"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
require("Comment").setup({})
time([[Config for Comment.nvim]], false)
-- Config for: nvim-lastplace
time([[Config for nvim-lastplace]], true)
require("nvim-lastplace").setup({})
time([[Config for nvim-lastplace]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
 require("nvim-autopairs").setup({}) 
time([[Config for nvim-autopairs]], false)
-- Config for: vim-wordmotion
time([[Config for vim-wordmotion]], true)
vim.g.wordmotion_prefix = '<space>'
time([[Config for vim-wordmotion]], false)
-- Config for: substitute.nvim
time([[Config for substitute.nvim]], true)
require("substitute").setup({})
time([[Config for substitute.nvim]], false)
-- Conditional loads
time([[Conditional loading of vim-bracketed-paste]], true)
  require("packer.load")({"vim-bracketed-paste"}, {}, _G.packer_plugins)
time([[Conditional loading of vim-bracketed-paste]], false)
time([[Conditional loading of diffview.nvim]], true)
  require("packer.load")({"diffview.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of diffview.nvim]], false)
time([[Conditional loading of vim-emoji]], true)
  require("packer.load")({"vim-emoji"}, {}, _G.packer_plugins)
time([[Conditional loading of vim-emoji]], false)
time([[Conditional loading of fidget.nvim]], true)
  require("packer.load")({"fidget.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of fidget.nvim]], false)
time([[Conditional loading of vim-floaterm]], true)
  require("packer.load")({"vim-floaterm"}, {}, _G.packer_plugins)
time([[Conditional loading of vim-floaterm]], false)
time([[Conditional loading of fzf]], true)
  require("packer.load")({"fzf"}, {}, _G.packer_plugins)
time([[Conditional loading of fzf]], false)
time([[Conditional loading of fzf-lua]], true)
  require("packer.load")({"fzf-lua"}, {}, _G.packer_plugins)
time([[Conditional loading of fzf-lua]], false)
time([[Conditional loading of gitsigns.nvim]], true)
  require("packer.load")({"gitsigns.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of gitsigns.nvim]], false)
time([[Conditional loading of goyo.vim]], true)
  require("packer.load")({"goyo.vim"}, {}, _G.packer_plugins)
time([[Conditional loading of goyo.vim]], false)
time([[Conditional loading of lualine.nvim]], true)
  require("packer.load")({"lualine.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of lualine.nvim]], false)
time([[Conditional loading of indent-blankline.nvim]], true)
  require("packer.load")({"indent-blankline.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of indent-blankline.nvim]], false)
time([[Conditional loading of mason-lspconfig.nvim]], true)
  require("packer.load")({"mason-lspconfig.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of mason-lspconfig.nvim]], false)
time([[Conditional loading of lf.nvim]], true)
  require("packer.load")({"lf.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of lf.nvim]], false)
time([[Conditional loading of mason.nvim]], true)
  require("packer.load")({"mason.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of mason.nvim]], false)
time([[Conditional loading of neo-tree.nvim]], true)
  require("packer.load")({"neo-tree.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of neo-tree.nvim]], false)
time([[Conditional loading of null-ls.nvim]], true)
  require("packer.load")({"null-ls.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of null-ls.nvim]], false)
time([[Conditional loading of nvim-cmp]], true)
  require("packer.load")({"nvim-cmp"}, {}, _G.packer_plugins)
time([[Conditional loading of nvim-cmp]], false)
time([[Conditional loading of nvim-cokeline]], true)
  require("packer.load")({"nvim-cokeline"}, {}, _G.packer_plugins)
time([[Conditional loading of nvim-cokeline]], false)
time([[Conditional loading of lsp_signature.nvim]], true)
  require("packer.load")({"lsp_signature.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of lsp_signature.nvim]], false)
time([[Conditional loading of vim-qfreplace]], true)
  require("packer.load")({"vim-qfreplace"}, {}, _G.packer_plugins)
time([[Conditional loading of vim-qfreplace]], false)
time([[Conditional loading of nvim-ufo]], true)
  require("packer.load")({"nvim-ufo"}, {}, _G.packer_plugins)
time([[Conditional loading of nvim-ufo]], false)
time([[Conditional loading of nvim-neoclip.lua]], true)
  require("packer.load")({"nvim-neoclip.lua"}, {}, _G.packer_plugins)
time([[Conditional loading of nvim-neoclip.lua]], false)
time([[Conditional loading of alpha-nvim]], true)
  require("packer.load")({"alpha-nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of alpha-nvim]], false)
time([[Conditional loading of nvim-web-devicons]], true)
  require("packer.load")({"nvim-web-devicons"}, {}, _G.packer_plugins)
time([[Conditional loading of nvim-web-devicons]], false)
time([[Conditional loading of nvim-notify]], true)
  require("packer.load")({"nvim-notify"}, {}, _G.packer_plugins)
time([[Conditional loading of nvim-notify]], false)
time([[Conditional loading of LuaSnip]], true)
  require("packer.load")({"LuaSnip"}, {}, _G.packer_plugins)
time([[Conditional loading of LuaSnip]], false)
time([[Conditional loading of vim-tmux-navigator]], true)
  require("packer.load")({"vim-tmux-navigator"}, {}, _G.packer_plugins)
time([[Conditional loading of vim-tmux-navigator]], false)
time([[Conditional loading of nvim-treesitter]], true)
  require("packer.load")({"nvim-treesitter"}, {}, _G.packer_plugins)
time([[Conditional loading of nvim-treesitter]], false)
time([[Conditional loading of vim-unimpaired]], true)
  require("packer.load")({"vim-unimpaired"}, {}, _G.packer_plugins)
time([[Conditional loading of vim-unimpaired]], false)
time([[Conditional loading of which-key.nvim]], true)
  require("packer.load")({"which-key.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of which-key.nvim]], false)
time([[Conditional loading of zinit-vim-syntax]], true)
  require("packer.load")({"zinit-vim-syntax"}, {}, _G.packer_plugins)
time([[Conditional loading of zinit-vim-syntax]], false)
time([[Conditional loading of symbols-outline.nvim]], true)
  require("packer.load")({"symbols-outline.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of symbols-outline.nvim]], false)
time([[Conditional loading of nvim-lspconfig]], true)
  require("packer.load")({"nvim-lspconfig"}, {}, _G.packer_plugins)
time([[Conditional loading of nvim-lspconfig]], false)
time([[Conditional loading of toggleterm.nvim]], true)
  require("packer.load")({"toggleterm.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of toggleterm.nvim]], false)
time([[Conditional loading of nvim-pqf]], true)
  require("packer.load")({"nvim-pqf"}, {}, _G.packer_plugins)
time([[Conditional loading of nvim-pqf]], false)
time([[Conditional loading of tokyonight.nvim]], true)
  require("packer.load")({"tokyonight.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of tokyonight.nvim]], false)
time([[Conditional loading of nvim-navic]], true)
  require("packer.load")({"nvim-navic"}, {}, _G.packer_plugins)
time([[Conditional loading of nvim-navic]], false)
time([[Conditional loading of trouble.nvim]], true)
  require("packer.load")({"trouble.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of trouble.nvim]], false)
time([[Conditional loading of project.nvim]], true)
  require("packer.load")({"project.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of project.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'UndotreeToggle', function(cmdargs)
          require('packer.load')({'undotree'}, { cmd = 'UndotreeToggle', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'undotree'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('UndotreeToggle ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType css ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'nvim-colorizer.lua', 'tagalong.vim'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType js ++once lua require("packer.load")({'emmet-vim'}, { ft = "js" }, _G.packer_plugins)]]
vim.cmd [[au FileType ts ++once lua require("packer.load")({'emmet-vim'}, { ft = "ts" }, _G.packer_plugins)]]
vim.cmd [[au FileType jsx ++once lua require("packer.load")({'emmet-vim'}, { ft = "jsx" }, _G.packer_plugins)]]
vim.cmd [[au FileType tsx ++once lua require("packer.load")({'emmet-vim'}, { ft = "tsx" }, _G.packer_plugins)]]
vim.cmd [[au FileType vue ++once lua require("packer.load")({'emmet-vim'}, { ft = "vue" }, _G.packer_plugins)]]
vim.cmd [[au FileType vim ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "vim" }, _G.packer_plugins)]]
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
