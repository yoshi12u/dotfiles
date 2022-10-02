local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
	return
end

local setup = {
	window = {
		border = "single", -- none, single, double, shadow
	},
	ignore_missing = true, -- enable this to hide mappings for which you didn't specify a label
}

local leader_opts = {
	mode = "n",
	prefix = "<leader>",
}

local leader_mappings = {
	["a"] = { "<cmd>Alpha<CR>", "Alpha" },

	b = {
		name = "Buffers",
		b = { "<cmd>lua require('fzf-lua').buffers()<CR>", "Buffers" },
	},

	f = {
		name = "Find",
		b = { "<cmd>lua require('fzf-lua').git_branches<CR>", "Checkout branch" },
		f = {
			[[<cmd>lua require('fzf-lua').files()<CR>]],
			"Find files",
		},
		s = {
			"<cmd>lua require('fzf-lua').live_grep()<CR>",
			"Find String",
		},
		k = {
			"<cmd>lua require('fzf-lua').keymaps()<CR>",
			"Find Keymaps",
		},
		c = {
			"<cmd>lua require('fzf-lua').commands()<CR>",
			"Find Commands",
		},
		p = {
			"<cmd>lua require('neoclip.fzf')()<CR>",
			"Find Yanked",
		},
	},

	g = {
		name = "Git",
		g = { "<cmd>lua _lazygit_toggle()<CR>", "Lazygit" },
		j = { "<cmd>lua require 'gitsigns'.next_hunk()<CR>", "Next Hunk" },
		k = { "<cmd>lua require 'gitsigns'.prev_hunk()<CR>", "Prev Hunk" },
		p = { "<cmd>lua require 'gitsigns'.preview_hunk()<CR>", "Preview Hunk" },
		r = { "<cmd>lua require 'gitsigns'.reset_hunk()<CR>", "Reset Hunk" },
		R = { "<cmd>lua require 'gitsigns'.reset_buffer()<CR>", "Reset Buffer" },
		s = { "<cmd>lua require 'gitsigns'.stage_hunk()<CR>", "Stage Hunk" },
		u = {
			"<cmd>lua require 'gitsigns'.undo_stage_hunk()<CR>",
			"Undo Stage Hunk",
		},
		b = { "<cmd> lua require('fzf-lua').git_branches()<CR>", "Checkout branch" },
		c = { "<cmd> lua require('fzf-lua').git_commits()<CR>", "Checkout commit" },
		d = {
			"<cmd>lua require('gitsigns').diffthis()<CR>",
			"Document Diff",
		},
		D = { "<cmd> lua require('fzf-lua').git_status()<CR>", "Workspace Diff" },
	},

	l = {
		name = "LSP",
		a = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code Action" },
		l = { "<cmd>lua vim.lsp.codelens.run()<CR>", "CodeLens Action" },
		q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", "Quickfix" },
		d = {
			"<cmd>lua require('fzf-lua').diagnostics_document()<CR>",
			"Document Diff",
		},
		D = {
			"<cmd>lua require('fzf-lua').diagnostics_workspace()<CR>",
			"Workspace Diff",
		},
		s = { "<cmd>lua require('fzf-lua').lsp_document_symbols<CR>", "Document Symbols" },
		S = {
			"<cmd>lua require('fzf-lua').lsp_dynamic_workspace_symbols<CR>",
			"Workspace Symbols",
		},
		r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
		o = { "<cmd>SymbolsOutline<CR>", "Outline" },
	},

	["n"] = { "<cmd>noh<CR>", "Clear Highlight" },

	p = {
		name = "Packer",
		c = { "<cmd>PackerCompile<CR>", "Compile" },
		i = { "<cmd>PackerInstall<CR>", "Install" },
		s = { "<cmd>PackerSync<CR>", "Sync" },
		S = { "<cmd>PackerStatus<CR>", "Status" },
		u = { "<cmd>PackerUpdate<CR>", "Update" },
	},
}

local g_opts = {
	mode = "n",
	prefix = "g",
}

local g_mappings = {
	d = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Go to Definition" },
	i = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Go to Implementation" },
	r = { "<cmd>lua vim.lsp.buf.references()<CR>", "Go to References" },
}

which_key.setup(setup)
which_key.register(leader_mappings, leader_opts)
which_key.register(g_mappings, g_opts)
