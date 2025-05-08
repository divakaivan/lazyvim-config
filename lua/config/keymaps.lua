-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>")

vim.keymap.set("n", "j", "k", { noremap = true })
vim.keymap.set("n", "k", "j", { noremap = true })
vim.keymap.set("v", "j", "k", { noremap = true })
vim.keymap.set("v", "k", "j", { noremap = true })

vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true })

vim.keymap.set("v", "<A-j>", ":m '<-2<CR>gv=gv", { silent = true })
vim.keymap.set("v", "<A-k>", ":m '>+1<CR>gv=gv", { silent = true })
