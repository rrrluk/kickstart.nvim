return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,

  -- NOTE: Options
  opts = {
    explorer = {
      -- your explorer configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    picker = {
      sources = {
        explorer = {
          -- your explorer picker configuration comes here
          -- or leave it empty to use the default settings
        },
      },
    },
  },
  -- NOTE: Keymaps
  keys = {
    {
      '<leader>gg',
      function()
        require('snacks').lazygit()
      end,
      desc = 'Lazygit',
    },
    {
      '<leader>gl',
      function()
        require('snacks').lazygit.log()
      end,
      desc = 'Lazygit Logs',
    },
    {
      '<leader>e',
      function()
        require('snacks').explorer()
      end,
      desc = 'Open Snacks Explorer',
    },
    {
      '<leader>bd',
      function()
        require('snacks').bufdelete()
      end,
      desc = 'Delete or Close Buffer  (Confirm)',
    },

    -- Snacks Picker
    {
      '<leader><leader>',
      function()
        require('snacks').picker.files()
      end,
      desc = 'Find Files (Snacks Picker)',
    },
    {
      '<leader>fc',
      function()
        require('snacks').picker.files { cwd = vim.fn.stdpath 'config' }
      end,
      desc = 'Find Config File',
    },
    {
      '<leader>/',
      function()
        require('snacks').picker.grep()
      end,
      desc = 'Grep word',
    },
    {
      '<leader>fws',
      function()
        require('snacks').picker.grep_word()
      end,
      desc = 'Search Visual selection or Word',
      mode = { 'n', 'x' },
    },
    {
      '<leader>fk',
      function()
        require('snacks').picker.keymaps { layout = 'ivy' }
      end,
      desc = 'Search Keymaps (Snacks Picker)',
    },

    -- Other Utils
  },
}
