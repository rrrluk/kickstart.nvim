return {
  vim.keymap.set('n', '<S-h>', ':bprev<CR>', { desc = 'Select previous buffer' }),
  vim.keymap.set('n', '<S-l>', ':bnext<CR>', { desc = 'Select next buffer' }),
  vim.keymap.set('n', '<leader>bd', ':bdelete<CR>', { desc = 'Delete buffer' }),
}
