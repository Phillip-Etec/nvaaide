-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = { noremap = true, silent = true }
local noremap = function(mode, rhs, lhs)
  vim.keymap.set(mode, rhs, lhs, opts)
end

-- Indent code in visual mode
-- vim.keymap.set("v", "<", "<gv", opt)
-- vim.keymap.set("v", ">", ">gv", opt)

vim.keymap.set("n", "<space><space>", ":", { silent = true})

-- replace the word under the cursor with whatever you want
noremap("n", "<leader>cw", "*``cgn")
noremap("n", "<leader>cW", "#``cgN")

noremap("n", "<up>", "<nop>")
noremap("n", "<down>", "<nop>")
noremap("n", "<left>", "<nop>")
noremap("n", "<right>", "<nop>")

noremap("i", "jk", "<esc>")

noremap("n", "<leader><space>", ":")

noremap("t", "<esc><esc>", "<c-\\><c-n>")

noremap("n", "<leader>m", ":<c-u><c-r><c-r>='let @'. v:register .' = '. string(getreg(v:register))<cr><c-f><left>")

noremap({"n", "x"}, "<leader>p", "\"+p")
noremap({"n", "x"}, "<leader>y", "\"+y")
noremap({"n", "x"}, "<leader>P", "\"+P")
noremap({"n", "x"}, "<leader>Y", "\"+y$")

noremap("n", "<leader>et", "<Cmd>tab ter<CR>")

noremap("n", "<c-w>h", "<c-w>h<c-w><bar>")
noremap("n", "<c-w>j", "<c-w>j<c-w>_")
noremap("n", "<c-w>k", "<c-w>k<c-w>_")
noremap("n", "<c-w>l", "<c-w>l<c-w><bar>")

noremap("v", "*", ":<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>")
noremap("v", "#", ":<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>")

noremap("n", "*", "*zz")
noremap("n", "#", "#zz")
noremap("n", "g*", "g*zz")
noremap("n", "g#", "g#zz")

noremap("x", "<s-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv")
noremap("x", "<s-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv")

noremap("v", ".", ":normal .<CR>")

noremap("n", "gV", "`[v`]")

vim.keymap.set("n", "<leader>ut", function()
  return (vim.go.laststatus == 3) and "<Cmd>set noshowmode noruler laststatus=0 noshowcmd<CR>" or "<Cmd>set showmode ruler laststatus=3 showcmd<CR>"
end, { expr = true, noremap = true, desc = "Toggle statusline" })

noremap("n", "<c-s>", "<Cmd>lua require('togglr').toggle_word()<CR>")
