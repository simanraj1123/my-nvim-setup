return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.black.with({
                    extra_args = {"--line-length", 100},
                }),
                null_ls.builtins.formatting.isort,
            },
        })
    end,
}
