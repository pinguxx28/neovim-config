vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<esc>", "<cmd>nohl<cr>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>w", "<cmd>write<cr>", { desc = "Save current file" })
keymap.set("n", "<leader>q", "<cmd>quit<cr>", { desc = "Quit current file" })

keymap.set("n", "<leader>s", "<cmd>source %<cr>", { desc = "Source current file" })
keymap.set("n", "<leader>e", "<cmd>Explore<cr>", { desc = "Open netrw" })

keymap.set("n", "<leader>n", "<cmd>tabnew<cr>", { desc = "Open new tab" })
keymap.set("n", "<leader>c", "<cmd>tabclose<cr>", { desc = "Close current tab" })

keymap.set("n", "<tab>", "<cmd>tabnext<cr>", { desc = "Go to next tab" })
keymap.set("n", "<s-tab>", "<cmd>tabprev<cr>", { desc = "Go to previous tab" })

keymap.set("v", "<", "<gv", { desc = "Outdent selected area" });
keymap.set("v", ">", ">gv", { desc = "Indent selected area" });

vim.api.nvim_set_keymap("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move selected area up", silent = true })
vim.api.nvim_set_keymap("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move selected area down", silent = true })
