-- rip netrw
vim.keymap.set('n', '<leader>pv', ':Oil<CR>')

-- delete without yanking
vim.keymap.set('x', '<leader>P', [["_dP]])

--- behave like other capitals
vim.keymap.set('n', 'Y', 'y$')

--- keeping it centered
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('n', 'J', 'mzJ`z')

-- make file executable
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })

--- moving text
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")

-- open tmux sessionizer (like a real chad)
vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tms<CR>')

-- Fugitive
vim.keymap.set('n', '<leader>gs', ':Git<CR>')
vim.keymap.set('n', '<leader>gp', ':Git push<CR>')
vim.keymap.set('n', '<leader>gP', ':Git pull<CR>')
vim.keymap.set('n', '<leader>gd', ':Git difftool<CR>')
vim.keymap.set('n', '<leader>gl', ':Git log<CR>')

-- CodeCompanion
vim.keymap.set('n', '<leader>at', ':CodeCompanionChat<CR>')
vim.keymap.set('v', '<leader>am', ':CodeCompanionActions<CR>')
vim.keymap.set('n', '<leader>ac', ':CodeCompanionCmd')

-- LSP
vim.keymap.set('i', '<C-s>', function()
  vim.lsp.buf.signature_help()
end)

-- Grug far
vim.keymap.set('n', '<leader>sr', ':GrugFar<CR>', { desc = '[S]earch [R]esume' })

-- Harpoon
vim.keymap.set('n', '<leader>H', function()
  require('harpoon'):list():add()
end)
vim.keymap.set('n', '<C-h>', function()
  require('harpoon'):list():select(1)
end)
vim.keymap.set('n', '<C-j>', function()
  require('harpoon'):list():select(2)
end)
vim.keymap.set('n', '<C-k>', function()
  require('harpoon'):list():select(3)
end)
vim.keymap.set('n', '<C-l>', function()
  require('harpoon'):list():select(4)
end)
vim.keymap.set('n', '<C-p>', function()
  require('harpoon'):list():prev()
end)
vim.keymap.set('n', '<C-n>', function()
  require('harpoon'):list():next()
end)
vim.keymap.set('n', '<C-o>', function()
  local harpoon = require 'harpoon'
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)
