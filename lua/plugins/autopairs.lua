return {
    'windwp/nvim-autopairs',
    config = function()
        require('nvim-autopairs').setup({
            map_cr = true,
            disable_filetype = { "TelescopePrompt" },
        })
    end
}
