-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
opt.clipboard = vim.env.SSH_TTY and "" or "unnamed"

opt.colorcolumn    = "80"

opt.relativenumber = true
opt.number         = true

opt.cursorline     = true
opt.cursorcolumn   = false

opt.shiftwidth     = 4
opt.tabstop        = 4
opt.softtabstop    = 4

opt.expandtab      = true

opt.autoindent     = true

opt.winminheight   = 0
opt.winminwidth    = 0
