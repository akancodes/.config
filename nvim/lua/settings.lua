local g = vim.g
local o = vim.o
local A = vim.api
local cmd = vim.cmd

-- Set colorscheme
cmd('colorscheme duskfox')
cmd('set ts=2')                                             -- insert 2 spaces for a tab
cmd('set sw=2')                                             -- change the number of space characters inserted for indentation


o.mouse = 'a' 																							-- set mouse mode to all previous modes
o.autoindent = true 																				-- take indent for new line from previous line
o.background = 'dark' 																			-- set background mode to dark for highlight colors
o.termguicolors = true 																			-- enables 24-bit RGB color
o.backup = false 																						-- close keeping backup file after overwriting a file
o.showmode = false 	 																				-- don't show mode in commandline
o.swapfile = false 																					-- don't use the swap file
o.updatetime = 500 																					-- if this many milliseconds nothing is typed the swap file will be written to disk
o.cmdheight = 2 																						-- set commandline height to 2
o.cursorline = true 																				-- shows cursorline
o.wrap = false 																							-- when on, lines longer than the width of the window will wrap and displaying continues on the next line
o.relativenumber = true 																		-- shows rows number relatively
o.clipboard = 'unnamedplus'
o.tabstop = 2
o.shiftwidth = 2
o.shiftround = true
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

vim.cmd([[set expandtab]])
