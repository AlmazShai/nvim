return {
  {
    "nvim-treesitter/nvim-treesitter",
    commit = "4d9466677a5ceadef104eaa0fe08d60d91c4e9a7",  -- Pin to stable commit from your lockfile
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.config").setup({
          -- A list of parser names, or "all" (the listed parsers MUST always be installed)
          ensure_installed = { "c", "lua", "cpp", "python"},

          -- Install parsers synchronously (only applied to `ensure_installed`)
          sync_install = false,

          -- Automatically install missing parsers when entering buffer
          -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
          auto_install = true,
          ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
          -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

          highlight = {
            enable = true,
          },
        incremental_selection = {
          enable = true,
          keymaps = {
            node_incremental = "v",
            node_decremental = "V",
            scope_incremental = false,
          }
        },

        textobjects = {
          select = {
            enable = true,
            lookahead = true,
            include_surrounding_whitespace = false,
            keymaps = {
              ['af'] = '@function.outer',
              ['if'] = '@function.inner',
              ['ac'] = '@class.outer',
              ['ic'] = '@class.inner',
              ['is'] = '@assignment.inner',
              ['as'] = '@assignment.outer',
              ['ig'] = '@block.inner',
              ['ag'] = '@block.outer',
              ['ia'] = '@parameter.inner',
              ['aa'] = '@parameter.outer',
              ['ik'] = '@call.inner',
              ['ak'] = '@call.outer',
              ['i/'] = '@comment.inner', -- Not working in Javascript
              ['a/'] = '@comment.outer',
              ['ir'] = '@conditional.inner',
              ['ar'] = '@conditional.outer',
              ['io'] = '@loop.inner',
              ['ao'] = '@loop.outer',
              ['it'] = '@return.inner', -- Not working in Javascript
              ['at'] = '@return.outer', -- Not working in Javascript
            },
          },
          move = {
            enable = true,
            set_jumps = true,
            goto_next_start = {
              ["]f"] = "@function.outer",
              ["]c"] = "@class.outer",
              [']s'] = '@assignment.inner',
              [']g'] = '@block.outer',
              [']a'] = '@parameter.outer',
              [']k'] = '@call.outer',
              [']/'] = '@comment.outer',
              [']r'] = '@conditional.outer',
              [']o'] = '@loop.outer',
              [']t'] = '@return.outer'
            },
            goto_next_end = {
              ["]F"] = "@function.outer",
              ["]C"] = "@class.outer",
              [']S'] = '@assignment.inner',
              [']G'] = '@block.outer',
              [']A'] = '@parameter.outer',
              [']K'] = '@call.outer',
              [']?'] = '@comment.outer',
              [']R'] = '@conditional.outer',
              [']O'] = '@loop.outer',
              [']T'] = '@return.outer'
            },
            goto_previous_start = {
              ["[f"] = "@function.outer",
              ["[c"] = "@class.outer",
              ['[s'] = '@assignment.inner',
              ['[g'] = '@block.outer',
              ['[a'] = '@parameter.outer',
              ['[k'] = '@call.outer',
              ['[/'] = '@comment.outer',
              ['[r'] = '@conditional.outer',
              ['[o'] = '@loop.outer',
              ['[t'] = '@return.outer',
            },
            goto_previous_end = {
              ["[F"] = "@function.outer",
              ["[C"] = "@class.outer",
              ['[S'] = '@assignment.inner',
              ['[G'] = '@block.outer',
              ['[A'] = '@parameter.outer',
              ['[K'] = '@call.outer',
              ['[?'] = '@comment.outer',
              ['[R'] = '@conditional.outer',
              ['[O'] = '@loop.outer',
              ['[T'] = '@return.outer'
            },
          },
        }
      })
      -- Configuration to treat JSONC files as JSON
      vim.treesitter.language.register('json', 'jsonc')

      -- local ts_repeat_move = require "nvim-treesitter.textobjects.repeatable_move"
      --
      -- -- Repeat movement with ; and ,
      -- -- ensure ; goes forward and , goes backward regardless of the last direction
      -- vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move_next)
      -- vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_previous)
      --
      -- -- Make builtin f, F, t, T also repeatable with ; and ,
      -- vim.keymap.set({ "n", "x", "o" }, "f", ts_repeat_move.builtin_f_expr, { expr = true })
      -- vim.keymap.set({ "n", "x", "o" }, "F", ts_repeat_move.builtin_F_expr, { expr = true })
      -- vim.keymap.set({ "n", "x", "o" }, "t", ts_repeat_move.builtin_t_expr, { expr = true })
      -- vim.keymap.set({ "n", "x", "o" }, "T", ts_repeat_move.builtin_T_expr, { expr = true })
    end,
  },
}