-- Code Telescope extension keymaps
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Telescope pickers
keymap("n", "<leader>ff", "<cmd>lua require('vscode').action('code-telescope.fuzzy.file')<CR>", opts) -- find files
keymap("n", "<leader>fg", "<cmd>lua require('vscode').action('code-telescope.fuzzy.wsText')<CR>", opts) -- workspace text search
keymap("n", "<leader>fw", "viw<cmd>lua require('vscode').action('code-telescope.fuzzy.wsText')<CR>", opts) -- search word under bcursor
keymap("n", "<leader>fs", "<cmd>lua require('vscode').action('code-telescope.fuzzy.wsSymbols')<CR>", opts) -- workspace symbols
keymap("n", "<leader>fo", "<cmd>lua require('vscode').action('code-telescope.fuzzy.recentFiles')<CR>", opts) -- recent files
keymap("n", "<leader>fd", "<cmd>lua require('vscode').action('code-telescope.fuzzy.diagnostics')<CR>", opts) -- diagnostics
keymap("n", "<leader>ft", "<cmd>lua require('vscode').action('code-telescope.fuzzy.tasks')<CR>", opts) -- tasks
keymap("n", "<leader>gB", "<cmd>lua require('vscode').action('code-telescope.fuzzy.branch')<CR>", opts) -- git branches
keymap("n", "<leader>fc", "<cmd>lua require('vscode').action('code-telescope.fuzzy.callHierarchy')<CR>", opts) -- call hierarchy
keymap("n", "<leader>fb", "<cmd>lua require('vscode').action('code-telescope.fuzzy.breakpoints')<CR>", opts) -- breakpoints
keymap("n", "<leader>ls", "<cmd>lua require('vscode').action('code-telescope.fuzzy.documentSymbols')<CR>", opts) -- document symbols
keymap("n", "<leader>f/", "<cmd>lua require('vscode').action('code-telescope.fuzzy.fileText')<CR>", opts) -- search in current file
