vim.g.mapleader = " "

local keymap = vim.keymap

-- Unselect the searched term
keymap.set("n", "<esc>", "<cmd>nohl<cr>", { desc = "Clear search highlights" })

-- Save and quit neovim files
keymap.set("n", "<leader>w", "<cmd>write<cr>", { desc = "Save current file" })
keymap.set("n", "<leader>q", "<cmd>quit<cr>", { desc = "Quit current file" })

-- Source current file
keymap.set("n", "<leader>s", "<cmd>source %<cr>", { desc = "Source current file" })

-- Replaced by oil.nvim
-- Open netrw
-- keymap.set("n", "<leader>e", "<cmd>Explore<cr>", { desc = "Open netrw" })

-- Create and open tabs
keymap.set("n", "<leader>n", "<cmd>tabnew<cr>", { desc = "Open new tab" })
keymap.set("n", "<leader>c", "<cmd>tabclose<cr>", { desc = "Close current tab" })

-- Switch tabs
keymap.set("n", "<tab>", "<cmd>tabnext<cr>", { desc = "Go to next tab" })
keymap.set("n", "<s-tab>", "<cmd>tabprev<cr>", { desc = "Go to previous tab" })

-- Indent but keep selection
keymap.set("v", "<", "<gv", { desc = "Outdent selected area" });
keymap.set("v", ">", ">gv", { desc = "Indent selected area" });

-- Move selected area vertically
vim.api.nvim_set_keymap("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move selected area up", silent = true })
vim.api.nvim_set_keymap("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move selected area down", silent = true })

-- Moving from terminal
keymap.set("t", "<C-w>h", "<cmd>wincmd h<cr>", { desc = "Move to left window" });
keymap.set("t", "<C-w>k", "<cmd>wincmd k<cr>", { desc = "Move to top window" });

-- Switching tab from terminal
keymap.set("t", "<tab>", "<cmd>tabnext<cr>", { desc = "Go to next tab" })
keymap.set("t", "<s-tab>", "<cmd>tabprev<cr>", { desc = "Go to previous tab" })
