local opts = { noremap = true, silent = true }

return {

  vim.keymap.set('n', '<S-h>', ':bprev<CR>', { desc = 'Select previous buffer' }),
  vim.keymap.set('n', '<S-l>', ':bnext<CR>', { desc = 'Select next buffer' }),
  -- vim.keymap.set('n', '<leader>bd', ':bdelete<CR>', { desc = 'Delete buffer' }),
  -- See hoiab searchi ajal highlighted tulemust ekraani keskel
  vim.keymap.set("n", "n", "nzz", opts),
  vim.keymap.set("n", "N", "Nzz", opts),
  vim.keymap.set("n", "*", "*zz", opts),
  vim.keymap.set("n", "#", "#zz", opts),
  vim.keymap.set("n", "g*", "g*zz", opts),
  vim.keymap.set("n", "g#", "g#zz", opts),

  -- Stay in indent mode
  vim.keymap.set("v", "<", "<gv", opts),
  vim.keymap.set("v", ">", ">gv", opts),

  -- See on see, et kui sa replaced midagi, siis paste register ei muutu
  vim.keymap.set("x", "p", [["_dP]]),
}
