return {
    'stevearc/conform.nvim',
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")
        conform.setup({
            formatters = {
                black = {
                    command = "black",
                    args = { "--line-length", "100", "-" },
                },
            },
            formatters_by_ft = {
                python = { "isort", "black" },
                lua = { "stylua" },
            },
            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 500,
            }
        })
    end
}
