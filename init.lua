-- lazy.nvim config

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Configure plugins
require("lazy").setup("plugins")

-- set clipboard to global clipboard
-- vim.opt.clipboard:append("unnamedplus")

require "user.generic_keymaps"
if vim.g.vscode then
  require "vscode.keymaps"
else
  require "user.terminal_keymaps"
end
