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
require("lazy").setup({
  -- comment/uncomment
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  },

  -- surround package
  {
    "kylechui/nvim-surround",
    -- tag = "fcfa7e02323d57bfacc3a141f8a74498e1522064", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },

  -- treesitter
  require("user.plugins.treesitter"),
})

-- set clipboard to global clipboard
-- vim.opt.clipboard:append("unnamedplus")

require "user.generic_keymaps"
if vim.g.vscode then
   require "user.vscode_keymaps"
else
    require "user.terminal_keymaps"
end
