-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- vim.cmd("colorscheme onedark")

local opt = vim.opt
local g = vim.g
local o = vim.o
local indent = 4

opt.scrolloff = 15

opt.smartindent = true
opt.expandtab = true
opt.shiftwidth = indent
opt.softtabstop = indent
opt.tabstop = indent

-- g.minimap_git_colors = 1
-- g.minimap_width = 4
-- g.minimap_auto_start = 1
