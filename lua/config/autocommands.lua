-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", { clear = true }),
    callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf }
        vim.keymap.set({ "n", "v" }, "<leader>c", "", { buffer = ev.buf, desc = "Code" })
        vim.keymap.set("n", "<leader>cg", "", { buffer = ev.buf, desc = "Goto" })
        vim.keymap.set("n", "<leader>cgD", vim.lsp.buf.declaration, { desc = "Declaration", buffer = ev.buf })
        vim.keymap.set("n", "<leader>cgd", vim.lsp.buf.definition, { desc = "Definition", buffer = ev.buf })
        vim.keymap.set("n", "<leader>cgi", vim.lsp.buf.implementation, { desc = "Implementation", buffer = ev.buf })
        vim.keymap.set("n", "<leader>cgr", vim.lsp.buf.references, { desc = "References", buffer = ev.buf })

        vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename", buffer = ev.buf })

        vim.keymap.set("n", "<leader>cD", vim.lsp.buf.type_definition, opts)
        vim.keymap.set("n", "<leader>cK", vim.lsp.buf.hover, { desc = "Hover", buffer = ev.buf })
        vim.keymap.set("n", "<leader>c<C-k>", vim.lsp.buf.signature_help, { desc = "Signature", buffer = ev.buf })

        vim.keymap.set("n", "<leader>cd", "", { desc = "Workspace", buffer = ev.buf })
        vim.keymap.set("n", "<leader>cda", vim.lsp.buf.add_workspace_folder,
            { desc = "Add workspace folder", buffer = ev.buf })
        vim.keymap.set("n", "<leader>cdr", vim.lsp.buf.remove_workspace_folder,
            { desc = "Remove workspace folder", buffer = ev.buf })
        vim.keymap.set("n", "<leader>cdl", function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, { desc = "List workspace folders", buffer = ev.buf })

        vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions", buffer = ev.buf })
        -- vim.keymap.set("n", "<leader>cf", function()
        --     vim.lsp.buf.format({ async = true })
        -- end, { desc = "Format", buffer = ev.buf })
        vim.keymap.set({ "n", "v" }, "<leader>cf", function()
            require('conform').format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 500,
            })
        end, { buffer = ev.buf, desc = "Format" })
        vim.api.nvim_create_autocmd({ "InsertLeave" }, {
            group = vim.api.nvim_create_augroup("Linting", { clear = true }),
            callback = function()
                -- try_lint without arguments runs the linters defined in `linters_by_ft`
                -- for the current filetype
                require("lint").try_lint()
            end,
        })
    end,
})

-- Python autocommand
-- Creating a augroup
local group = vim.api.nvim_create_augroup("Python_AutoCmds", { clear = true })

-- Creating the AutoCmds in the Python_AutoCmds augroup
vim.api.nvim_create_autocmd("FileType", {
    group = group,
    pattern = "python",
    callback = function()
        local current_buf = vim.api.nvim_get_current_buf()
        -- Run python through shell
        vim.keymap.set("n", "<leader>cx", ":w | !python3 % <CR>",
            { buffer = current_buf, noremap = true, silent = true, desc = "Run via shell" })
        -- Generate Auto docstrings
        vim.keymap.set("n", "<leader>c\"", ":DogeGenerate sphinx <CR>",
            { buffer = current_buf, noremap = true, silent = true, desc = "Generate Docstring" })
        -- Venv selector
        vim.keymap.set("n", "<leader>v", "", {
            buffer = current_buf,
            noremap = true,
            silent = true,
            desc =
            "Venv selector"
        })
        vim.keymap.set("n", "<leader>vs", ":VenvSelect <cr>",
            { buffer = current_buf, noremap = true, silent = true, desc = "Select" })
        vim.keymap.set("n", "<leader>vc", ":VenvSelectCached <cr>",
            { buffer = current_buf, noremap = true, silent = true, desc = "Select Cached" })
        -- Neotest
        vim.keymap.set("n", "<leader>t", "", { buffer = current_buf, noremap = true, silent = true, desc = "Test" })
        vim.keymap.set("n", "<leader>ts", ":lua require('neotest').summary.toggle()<cr>",
            { buffer = current_buf, noremap = true, silent = true, desc = "Summary" })
        vim.keymap.set("n", "<leader>tr", ":lua require('neotest').run.run(vim.fn.getcwd())<cr>",
            { buffer = current_buf, noremap = true, silent = true, desc = "Run" })
        vim.keymap.set("n", "<leader>tt", ":lua require('neotest').run.stop(vim.fn.getcwd())<cr>",
            { buffer = current_buf, noremap = true, silent = true, desc = "Terminate/Stop" })
    end,
})
