require("plugin")

vim.opt.number = true
vim.opt.wrap = true 
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true 
vim.opt.nuw = 1
vim.opt.syntax = "on"
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.cmd [[colorscheme deus]]
vim.api.nvim_set_hl(0,"Normal", {bg = "none"})
vim.api.nvim_set_hl(0,"NormalFloat", {bg = "none"})
