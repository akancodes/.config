-- Keymappings
local set_map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true}

set_map('n', '<Space>', '<NOP>', options)
vim.g.mapleader = " "

-- Toggle Explorer
set_map('n', '<Leader>e', ':NvimTreeToggle<CR>', options )

-- Indenting
set_map('v', '<', '<gv', options)
set_map('v', '>', '>gv', options)

-- Set jj, jk and kj to escape key
set_map('i', 'jj', '<ESC>', options)
set_map('i', 'jk', '<ESC>', options)
set_map('i', 'kj', '<ESC>', options)

set_map('n', '<Leader>]', ':bnext<CR>', options)
set_map('n', '<Leader>[', ':bprev<CR>', options)
set_map('n', '<Leader>[[', ':bw<CR>', options)

-- Better windows movement
set_map('n', '<C-h>', '<C-w>h', { silent = true })
set_map('n', '<C-j>', '<C-w>j', { silent = true })
set_map('n', '<C-k>', '<C-w>k', { silent = true })
set_map('n', '<C-l>', '<C-w>l', { silent = true })

