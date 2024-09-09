vim.g.mapleader = " "

-- set variable for conciseness
local keymap = vim.keymap

-- exit
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear highlight
keymap.set("n", "<leader>h", ":nohl<CR>", { desc = "Clear search highlights" })

-- exit and close all buffers / windows
keymap.set("n", "<leader>q", ":qa<CR>", { desc = "Clear search highlights" })

-- save current buffer
keymap.set("n", "<C-s>", ":w<CR>", { desc = "Clear search highlights" })

-- split windows
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Split Make split equals sizer" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "close windows" })

-- tabs commands
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabnep<CR>", { desc = "go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "open current buffer in new tab" })
