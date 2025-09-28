vim.g.mapleader = " "

local map = vim.keymap.set

-- Clear highlights
map("n", "<leader>n", ":noh<CR>", { desc = "Clear search highlight" })

-- Terminal escape
map("t", "<C-[>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })

-- Telescope shortcuts
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })

