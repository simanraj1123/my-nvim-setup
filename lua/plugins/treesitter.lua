return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {"c", "vim", "lua", "python", "rust"},
            auto_install = true,
            highlight = {
                enable = true,
            },
        })
    end,
}
