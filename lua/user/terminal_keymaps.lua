local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }


-- Insert mode: 'jj' to exit insert mode
keymap("i", "jj", "<Esc>")
keymap("i", "jk", "<Esc>:w<CR>")

-- Normal mode: <leader>w to save
keymap("n", "<leader>w", ":w<CR>")

-- Normal mode: <leader>q to quit
keymap("n", "<leader>q", ":q<CR>")
