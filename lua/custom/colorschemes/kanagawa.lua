return { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    -- 'folke/tokyonight.nvim',
    'rebelot/kanagawa.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      -- require('tokyonight').setup {
      require('kanagawa').setup {
      --   styles = {
      --     comments = { italic = false }, -- Disable italics in comments
      --   },
      -- }
      theme = "wave",              -- vim.o.background = ""
      background = {
          dark = "wave",         -- vim.o.background = "dark"
          light = "lotus"          -- vim.o.background = "light"
      },
  }

    end,
  }
