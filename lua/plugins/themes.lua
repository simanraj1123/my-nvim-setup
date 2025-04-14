return {
    {
        "catppuccin/nvim", name = "catppuccin", priority = 1000
    },

    {
        'projekt0n/github-nvim-theme',
        name = 'github-theme',
        priority = 1000,
        config = function()
            require('github-theme').setup({})
        end
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    }
}
