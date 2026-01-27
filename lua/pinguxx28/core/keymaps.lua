vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<esc>", "<cmd>nohl<cr>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>w", "<cmd>write<cr>", { desc = "Save current file" })
keymap.set("n", "<leader>q", "<cmd>quit<cr>", { desc = "Quit current file" })

keymap.set("n", "<leader>s", "<cmd>source %<cr>", { desc = "Source current file" })

-- Replaced by oil.nvim
-- keymap.set("n", "<leader>e", "<cmd>Explore<cr>", { desc = "Open netrw" })

keymap.set("n", "<leader>n", "<cmd>tabnew<cr>", { desc = "Open new tab" })
keymap.set("n", "<leader>c", "<cmd>tabclose<cr>", { desc = "Close current tab" })

keymap.set("n", "<tab>", "<cmd>tabnext<cr>", { desc = "Go to next tab" })
keymap.set("n", "<s-tab>", "<cmd>tabprev<cr>", { desc = "Go to previous tab" })

-- Keep selection after indention or outdention
keymap.set("v", "<", "<gv", { desc = "Outdent selected area" });
keymap.set("v", ">", ">gv", { desc = "Indent selected area" });

-- Move selected area vertically
vim.api.nvim_set_keymap("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move selected area up", silent = true })
vim.api.nvim_set_keymap("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move selected area down", silent = true })

keymap.set("t", "<C-w>h", "<cmd>wincmd h<cr>", { desc = "Move to left window" });
keymap.set("t", "<C-w>k", "<cmd>wincmd k<cr>", { desc = "Move to top window" });
-- When the hands are too fast 
keymap.set("t", "<C-w><C-h>", "<cmd>wincmd h<cr>", { desc = "Move to left window" });
keymap.set("t", "<C-w><C-k>", "<cmd>wincmd k<cr>", { desc = "Move to top window" });

keymap.set("t", "<tab>", "<cmd>tabnext<cr>", { desc = "Go to next tab" })
keymap.set("t", "<s-tab>", "<cmd>tabprev<cr>", { desc = "Go to previous tab" })

-- Vertical movement center screen
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzz")
keymap.set("n", "N", "Nzz")

-- Copy and paste
-- keymap.set("v", "<leader>y", '"+y', { noremap = true, desc = "Copy to clipboard" })

-- Copy and paste for ssh
vim.g.clipboard = {
    name = "osc52",
    copy = {
        ["+"] = function(lines)
            require("osc52").copy(table.concat(lines, "\n"))
        end,
        ["*"] = function(lines)
            require("osc52").copy(table.concat(lines, "\n"))
        end,
    },
    paste = {
        ["+"] = function() return {} end,
        ["*"] = function() return {} end,
    },
}

