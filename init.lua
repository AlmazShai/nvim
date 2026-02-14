require "user.generic_keymaps" 
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
require("lazy").setup("plugins", {
  rocks = {
    enabled = false,  -- Disable luarocks (not needed for current plugins)
  },
})

-- set clipboard to global clipboard
-- vim.opt.clipboard:append("unnamedplus")
if vim.g.vscode then
  require "editor.keymaps"
else
  require "user.terminal_keymaps"
end
