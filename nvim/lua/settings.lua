local setup = function()
  vim.cmd('colorscheme duskfox')
  vim.o.termguicolors = true -- todo: update this line
  vim.o.clipboard = 'unnamedplus'

  vim.wo.relativenumber = true
  vim.wo.wrap = false
  vim.wo.cursorline = true

  vim.o.mouse = 'a'

  vim.cmd([[set expandtab]])
  vim.bo.tabstop = 2
  vim.bo.shiftwidth = 2
  vim.cmd("set ts=2") -- Insert 2 spaces for a tab
  vim.cmd("set sw=2") -- Change the number of space characters inserted for indentation
  vim.o.shiftround = true
end

return { setup = setup }
