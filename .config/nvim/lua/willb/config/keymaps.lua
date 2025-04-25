-- Remap leader to space
vim.g.mapleader = " "

-- Quick access to NerdTree
vim.keymap.set('n', '<Leader><tab>', ':<C-u>NERDTreeFocus<CR>')

-- Quick access to FZF
vim.keymap.set('n', '<C-p>', ':<C-u>FZF<CR>')

-- Replace & Replace All
vim.keymap.set('n', '<Leader>r', ':s/')
vim.keymap.set('n', '<Leader>ra', ':%s/')

-- Pane Movements
vim.keymap.set('n', '<Leader>h', ':wincmd h<CR>')
vim.keymap.set('n', '<Leader>j', ':wincmd j<CR>')
vim.keymap.set('n', '<Leader>k', ':wincmd k<CR>')
vim.keymap.set('n', '<Leader>l', ':wincmd l<CR>')

-- Transpose Selection
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
