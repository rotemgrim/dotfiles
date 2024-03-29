-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local keys = require("lazyvim.plugins.lsp.keymaps").get()

-- disable a lsp keymap
keys[#keys + 1] = { "K", false }
-- add an lsp keymap
keys[#keys + 1] = { "<leader>ck", "<cmd>lua vim.lsp.buf.hover()<CR>", desc = "Hover" }

vim.keymap.set("n", "<leader>uu", "<cmd>Neotree float document_symbols<cr>", { desc = "Neotree float" })

-- Move Lines
vim.keymap.set("n", "<M-J>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "<M-K>", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("i", "<M-J>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("i", "<M-K>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
vim.keymap.set("v", "<M-J>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "<M-K>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- buffers
-- vim.keymap.del("K")
vim.keymap.set("n", "<S-j>", "<cmd>bprevious<cr>", { desc = "Prev buffer", noremap = true, silent = true })
vim.keymap.set("n", "<S-k>", "<cmd>bnext<cr>", { desc = "Next buffer", noremap = true, silent = true })
-- vim.keymap.set("n", "K", "<cmd>bnext<cr>", { desc = "Next buffer", noremap = true, silent = true })

-- Jump list
vim.keymap.set("n", "<S-h>", "<C-o>", { desc = "Go Back" })
vim.keymap.set("n", "<S-l>", "<C-i>", { desc = "Go Forward" })
vim.keymap.set("n", "<tab>", "<esc>", { desc = "window" })

-- diagnostic
local diagnostic_goto = function(next, severity)
    local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
    severity = severity and vim.diagnostic.severity[severity] or nil
    return function()
        go({ severity = severity })
    end
end

-- Go to next
vim.keymap.set("n", "gn", "", { desc = "Go Next", noremap = true })
vim.keymap.set("n", "gnd", diagnostic_goto(true), { desc = "Next Diagnostic" })
vim.keymap.set("n", "gne", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
vim.keymap.set("n", "gnw", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
vim.keymap.set("n", "gnq", vim.cmd.cnext, { desc = "Next quickfix" })

-- Go to prev
vim.keymap.set("n", "gpd", diagnostic_goto(false), { desc = "Prev Diagnostic" })
vim.keymap.set("n", "gpe", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })
vim.keymap.set("n", "gpw", diagnostic_goto(false, "WARN"), { desc = "Prev Warning" })
vim.keymap.set("n", "gpq", vim.cmd.cprev, { desc = "Previous quickfix" })
