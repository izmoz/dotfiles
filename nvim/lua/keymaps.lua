vim.g.mapleader = "\\"
local opts = {noremap=true, silent=true}
local k = vim.api.nvim_set_keymap
k("i","<Esc>","<C-c>",opts)
