return {
    -- Auto-generate docstrings
    {
        "kkoomen/vim-doge",
        build = ":call doge#install()"
    },

    -- Select virtual envs
    {
        'linux-cultist/venv-selector.nvim',
        dependencies = { 'neovim/nvim-lspconfig', 'nvim-telescope/telescope.nvim', 'mfussenegger/nvim-dap-python' },
        config = function()
            require('venv-selector').setup {
                -- Your options go here
                name = { ".venv" },
                auto_refresh = true,
                stay_on_this_version = true,
                auto_select_venv = true,     -- Automatically select virtualenv if available
                search_venv_managers = true, -- Search for venvs managed by pipenv, poetry, etc.
                search = true,               -- Search for venvs automatically
                default_python = "/Users/siman/Pyenvs/base/bin/python3"
            }
        end,
        event = 'VeryLazy', -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
    },

    -- Pytest
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-neotest/nvim-nio",
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter",
            "nvim-neotest/neotest-python",
        },
        config = function()
            require("neotest").setup({
                adapters = {
                    require("neotest-python")({
                        runner = "pytest",
                    })
                }
            })
        end
    },
}
