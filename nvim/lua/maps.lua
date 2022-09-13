-- Keymappings
local set_map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true}

set_map('n', '<Space>', '<NOP>', options)
vim.g.mapleader = " "

-- Toggle Explorer
set_map('n', '<Leader>ee', ':NvimTreeToggle<CR>', options )
set_map('n', '<Leader>er', ':NvimTreeFocus<CR>', options)

-- Indenting
set_map('v', '<', '<gv', options)
set_map('v', '>', '>gv', options)

-- Set jj, jk and kj to escape key
set_map('i', 'jj', '<ESC>', options)
set_map('i', 'jk', '<ESC>', options)
set_map('i', 'kj', '<ESC>', options)

set_map('n', '<Leader>]t', ':bnext<CR>', options)
set_map('n', '<Leader>[t', ':bprev<CR>', options)
set_map('n', '<Leader>]]', ':bw<CR>', options)

-- Better windows movement
set_map('n', '<C-h>', '<C-w>h', { silent = true })
set_map('n', '<C-j>', '<C-w>j', { silent = true })
set_map('n', '<C-k>', '<C-w>k', { silent = true })
set_map('n', '<C-l>', '<C-w>l', { silent = true })

-- Telescope
set_map('n', '<Leader>ff', ':Telescope find_files<CR>', options)
set_map('n', '<Leader>fb', ':Telescope buffers<CR>', options)

-- Move lines smoothly in visual mode
set_map('v', '<C-j>', ':m \'>+1<CR>gv=gv', options)
set_map('v', '<C-k>', ':m \'>-2<CR>gv=gv', options)

-- Toggle integrated terminal
set_map('n', '<Leader>t', ':ToggleTerm<CR>', options)
set_map('t', '<ESC>', '<C-\\><C-n>', options)
