vim.keymap.set("n", "R", "<cmd>lua require('substitute').operator()<cr>", { noremap = true })
vim.keymap.set("x", "R", "<cmd>lua require('substitute').visual()<cr>", { noremap = true })
