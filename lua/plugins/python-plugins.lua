return {
    -- Auto-generate docstrings
    {
        "kkoomen/vim-doge",
        build = ":call doge#install()"
    },
    {
        'linux-cultist/venv-selector.nvim',
        dependencies = { 'neovim/nvim-lspconfig', 'nvim-telescope/telescope.nvim', 'mfussenegger/nvim-dap-python' },
        config = function()
            require('venv-selector').setup {
                -- Your options go here
                name = ".venv",
                auto_refresh = true
            }
        end,
        event = 'VeryLazy', -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
    }
}
