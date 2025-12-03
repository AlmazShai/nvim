-- packer.nvim config

-- ensure that packer is installed
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- configure plugins
require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    
    -- comment/uncomment
    use {
        'numToStr/Comment.nvim',
        config = function()
            require'Comment'.setup()
        end
    }

    -- surround package
   use({
       "kylechui/nvim-surround",
          tag = "fcfa7e02323d57bfacc3a141f8a74498e1522064", -- Use for stability; omit to use `main` branch for the latest features
          config = function()
              require("nvim-surround").setup({
                  -- Configuration here, or leave empty to use defaults
              })
        end
    })
    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end
)

-- set clipboard to global clipboard
vim.opt.clipboard:append("unnamedplus")

-- keybindings

-- map jk to escape
-- inoremap('jk', '<ESC>')
-- inoremap('JK', '<ESC>')
-- inoremap('jK', '<ESC>')

if vim.g.vscode then
   require "user.vscode_keymaps"
else

end
