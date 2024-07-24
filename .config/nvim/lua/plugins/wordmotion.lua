vim.g.wordmotion_prefix = "<leader>"

return {{
    "haya14busa/vim-edgemotion",
    vscode = true,
    keys = {{"<c-j>", "<Plug>(edgemotion-j)"}, {"<CR>", "<Plug>(edgemotion-j)"}, {"<c-k>", "<Plug>(edgemotion-k)"}}
}, {
    "chaoren/vim-wordmotion",
    vscode = true,
    event = "VeryLazy"
}}
