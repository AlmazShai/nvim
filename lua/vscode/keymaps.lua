-- General VSCode keymaps (not extension-specific)
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- General keymaps
keymap({"n", "v"}, "<leader>t", "<cmd>lua require('vscode').action('workbench.action.terminal.toggleTerminal')<CR>")
keymap({"n", "v"}, "<leader>b", "<cmd>lua require('vscode').action('editor.debug.action.toggleBreakpoint')<CR>")
keymap({"n", "v"}, "<leader>d", "<cmd>lua require('vscode').action('editor.action.showHover')<CR>")
keymap({"n", "v"}, "<leader>a", "<cmd>lua require('vscode').action('editor.action.quickFix')<CR>")
keymap({"n", "v"}, "<leader>sp", "<cmd>lua require('vscode').action('workbench.actions.view.problems')<CR>")
keymap({"n", "v"}, "<leader>cn", "<cmd>lua require('vscode').action('notifications.clearAll')<CR>")
keymap({"n", "v"}, "<leader>ff", "<cmd>lua require('vscode').action('workbench.action.quickOpen')<CR>")
keymap({"n", "v"}, "<leader>cp", "<cmd>lua require('vscode').action('workbench.action.showCommands')<CR>")
keymap({"n", "v"}, "<leader>pr", "<cmd>lua require('vscode').action('code-runner.run')<CR>")
keymap({"n", "v"}, "<leader>fd", "<cmd>lua require('vscode').action('workbench.action.formatDocument')<CR>")
keymap({"n", "v"}, "<leader>w", "<cmd>lua require('vscode').action('workbench.action.files.save')<CR>")
keymap({"n", "v"}, "<leader>q", "<cmd>lua require('vscode').action('workbench.action.closeActiveEditor')<CR>")
keymap({"n", "v"}, "<leader>o", "<cmd>lua require('vscode').action('clangd.switchheadersource')<CR>")

-- Search and replace
keymap({"n", "v"}, "<leader>fg", "<cmd>lua require('vscode').action('workbench.action.findInFiles')<CR>", opts) -- find in files

-- Load extension-specific keymaps
require("vscode.extensions.harpoon")
require("vscode.extensions.project-manager")
