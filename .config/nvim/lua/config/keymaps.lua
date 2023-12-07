-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

vim.keymap.set("n", "<leader>uu", "<cmd>Neotree float document_symbols<cr>", { desc = "Neotree float" })

-- Move Lines
vim.keymap.set("n", "<M-J>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "<M-K>", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("i", "<M-J>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("i", "<M-K>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
vim.keymap.set("v", "<M-J>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "<M-K>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- buffers
vim.keymap.set("n", "<S-j>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "<S-k>", "<cmd>bnext<cr>", { desc = "Next buffer" })

-- Jump list
vim.keymap.set("n", "<S-h>", "<C-o>", { desc = "Go Back" })
vim.keymap.set("n", "<S-l>", "<C-i>", { desc = "Go Forward" })
vim.keymap.set("n", "<tab>", "<esc>", { desc = "window" })
