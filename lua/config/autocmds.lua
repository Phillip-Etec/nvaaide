-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function augroup(name)
  return vim.api.nvim_create_augroup("my_" .. name, { clear = true })
end

local cursor_toggle = augroup("cursor_toggle")

vim.api.nvim_create_autocmd("FileType", {
  group = augroup("filetype_htm"),
  pattern = { "html", "pug", "hbs" },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})

vim.api.nvim_create_autocmd("WinLeave", {
  group = cursor_toggle,
  pattern = { "*" },
  callback = function()
    vim.opt_local.cursorcolumn = false
    vim.opt_local.cursorline = false
    vim.opt_local.colorcolumn = '0'
  end,
})

vim.api.nvim_create_autocmd("WinEnter", {
  group = cursor_toggle,
  pattern = { "*" },
  callback = function()
    vim.opt_local.cursorcolumn = false
    vim.opt_local.cursorline = true
    vim.opt_local.colorcolumn = '80'
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = augroup("marker_folds"),
  pattern = { "vim" },
  callback = function()
    vim.opt_local.foldmethod = "marker"
  end,
})

local cdc = function(args)
  vim.cmd([[cd %:p:h]])
end

vim.api.nvim_create_user_command("CDC", cdc, {
    nargs = 0,
    desc = "Change directory into current file's parent directory",
    -- enable bang detection
    bang = true,
})

vim.cmd([[
  function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    let @/ = l:pattern
    let @" = l:saved_reg
  endfunction
]])

vim.api.nvim_set_hl(0, "CursorLine",   { bg = "#21222c" })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#21222c" })
vim.api.nvim_set_hl(0, "ColorColumn",  { bg = "#21222c" })
