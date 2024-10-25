vim.keymap.set("n", "<leader>w", "<C-w>", {desc="Window commands"})
vim.keymap.set("n", "<leader>e", ":Neotree <cr>", {})
vim.keymap.set("n", "<leader>wq", ":confirm q <cr>", {desc = "Close"})

-- File handling
vim.keymap.set("n", "<leader>f", "", {desc="File"})
vim.keymap.set("n", "<leader>fs", ":w <cr>", {desc="Save"})
vim.keymap.set("n", "<leader>ff", ":Telescope find_files <cr>", {desc = "Find"})
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep <cr>", {desc = "Grep"})

-- Buffer handling
vim.keymap.set("n", "<leader>b", "", {desc="Buffers"})
vim.keymap.set("n", "<leader>bb", ":Telescope buffers <cr>", {desc="List"})
vim.keymap.set("n", "<leader>bd", ":confirm bd <cr>", {desc="Delete current buffer"})

-- Git
vim.keymap.set("n", "<leader>g", "", {desc="Git"})
vim.keymap.set("n", "<leader>gl", ":LazyGit <cr>", {desc="Git"})
