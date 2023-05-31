---@type ChadrcConfig 
local M = {}
M.ui = {theme = 'chadracula'}
M.plugins = 'custom.plugins'
M.mappings = require('custom.mappings')

vim.opt.clipboard = "unnamedplus"
vim.opt.foldmethod = "indent"
-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevelstart = 99

vim.opt.swapfile = false

return M
