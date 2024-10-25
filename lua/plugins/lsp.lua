return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({})
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pyright", "rust_analyzer" },
            })
        end,
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            -- Setup language servers.
            local lspconfig = require("lspconfig")

            --local capabilities = require("cmp_nvim_lsp").default_capabilities()
            lspconfig.lua_ls.setup({})
            lspconfig.pyright.setup({})
            lspconfig.rust_analyzer.setup({})
        end,
    },
}
