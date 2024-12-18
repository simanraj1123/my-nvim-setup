vim.keymap.set("n", "<leader>w", "<C-w>", { desc = "Window commands" })
vim.keymap.set("n", "<leader>e", ":Neotree <cr>", {})
vim.keymap.set("n", "<leader>wq", ":confirm q <cr>", { desc = "Close" })

-- Scrolling
vim.keymap.set("n", "<C-j>", "<C-e>", { desc = "Scroll down" })
vim.keymap.set("n", "<C-k>", "<C-y>", { desc = "Scroll up" })

-- File handling
vim.keymap.set("n", "<leader>f", "", { desc = "File" })
vim.keymap.set("n", "<leader>fs", ":w <cr>", { desc = "Save" })
vim.keymap.set("n", "<leader>ff", ":Telescope find_files <cr>", { desc = "Find" })
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep <cr>", { desc = "Grep" })

-- Buffer handling
vim.keymap.set("n", "<leader>b", "", { desc = "Buffers" })
vim.keymap.set("n", "<leader>bt", ":Telescope buffers <cr>", { desc = "List in Telescope" })
vim.keymap.set("n", "<leader>bd", ":confirm bd <cr>", { desc = "Delete current buffer" })
vim.keymap.set("n", "<leader>bb", ":Neotree float buffers<cr>", { desc = "List in Neotree" })

-- Git
vim.keymap.set("n", "<leader>g", "", { desc = "Git" })
vim.keymap.set("n", "<leader>gl", ":LazyGit <cr>", { desc = "LazyGit" })
vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame <cr>", { desc = "Toggle blame line" })
vim.keymap.set("n", "<leader>gB", ":Gitsigns blame <cr>", { desc = "Blame" })
vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk_inline <cr>", { desc = "Preview hunk" })

-- Go to Dashboard
vim.keymap.set("n", "<C-d>", ":Dashboard <cr>", { desc = "Dashboard" })

-- Flash
vim.keymap.set("n", "<leader>s", "", { desc = "Flash search" })
vim.keymap.set("n", "<leader>ss", "<cmd>lua require('flash').jump()<cr>", { desc = "Search and jump" })
vim.keymap.set("n", "<leader>st", "<cmd>lua require('flash').treesitter()<cr>", { desc = "Treesitter objects" })

-- Toggleterm
vim.keymap.set("n", "<leader>T", ":ToggleTerm <cr>", { desc = "Toggle Terminal" })
vim.keymap.set("t", "<leader><esc>", "<C-\\><C-n>")
