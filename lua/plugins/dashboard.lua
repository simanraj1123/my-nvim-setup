return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
        require('dashboard').setup {
            theme = "doom",
            config = {
                header = {
                    "                                                                                                    ",
                    "                                                                                                    ",
                    "                                                                                                    ",
                    "                                                                            *#######:               ",
                    "                                                                        ###====++***##:             ",
                    "                                                                    -##=---===++****###:            ",
                    "                                                                 -##=::---====++***####+            ",
                    "                    :=####*****#####-:                        :##=:::-----===++***#####+            ",
                    "                  *##*+====++++++***#####:                 .##=----------===++***######=            ",
                    "                =##*+=========+++****########.          .##=-====------==-===+***######:            ",
                    "               %@#++===========++*****##########+     *#=-=======--:::::::-======*####*             ",
                    "              =@@#*============+++*****##############====::                    -===*##-             ",
                    "             .@@@@@#*===========++*****#####%@@@@%=*###*:                      -@@==*#              ",
                    "             @@@@@@@@@@@@%%######%%@@@@@@@@@@@#=*###########=:             :+@@@@@@===              ",
                    "            *@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@==#############%%%@@@@@@@%@@@@@@@@@@@@@@==:              ",
                    "           =@@@@@@@@@@@@@@@@@@@@@@@@@@@+=*%%%%#########%%%%%@@@@@@@@@@@@@@@@@@@@@@@=:               ",
                    "          :@@@@@@@@@@@@@@@@@@@@@@@%==:===*%%%%%%%%%%%%%%%%%@@@@@@@@@@@@@@@@@@@@@@@+-                ",
                    "          *@@@@@@@@@@@@@@@@@@#===:        ===+%@%%%%%%%%%@@@@@@@@@@@@@@@@@@@@@@@@=:                 ",
                    "          =@@@@@@@@@@@@#====                   ===#@@@@@@@@@@@@@@@@@@@@@@@@@@@@==                   ",
                    "            -========:                              ==+%@@@@@@@@@@@@@@@@@@@@+=                      ",
                    "                                                         .===*%@@@@@@%*==:                          ",
                    "                                                                                                    ",
                    "                                                                                                    ",
                    "                                                                                                    ",
                },
                center = {
                    {
                        icon = ' ',
                        icon_hl = 'group',
                        desc = 'Find file',
                        desc_hl = 'group',
                        key = 'f',
                        key_hl = 'group',
                        key_format = ' [f]', -- `%s` will be substituted with value of `key`
                        action = ':Telescope find_files',
                    },
                    {
                        icon = ' ',
                        icon_hl = 'group',
                        desc = 'Grep Search',
                        desc_hl = 'group',
                        key = 'g',
                        key_hl = 'group',
                        key_format = ' [g]', -- `%s` will be substituted with value of `key`
                        action = ':Telescope live_grep',
                    },
                    {
                        icon = ' ',
                        icon_hl = 'group',
                        desc = 'Config',
                        desc_hl = 'group',
                        key = 'c',
                        key_hl = 'group',
                        key_format = ' [c]', -- `%s` will be substituted with value of `key`
                        action = ':Telescope find_files search_dirs={"~/Programming/dotfiles/nvim/"}',
                    },
                    {
                        icon = '󰒲 ',
                        icon_hl = 'group',
                        desc = 'Lazy',
                        desc_hl = 'group',
                        key = 'l',
                        key_hl = 'group',
                        key_format = ' [l]', -- `%s` will be substituted with value of `key`
                        action = ':Lazy',
                    },
                    {
                        icon = ' ',
                        icon_hl = 'group',
                        desc = 'Mason',
                        desc_hl = 'group',
                        key = 'm',
                        key_hl = 'group',
                        key_format = ' [m]', -- `%s` will be substituted with value of `key`
                        action = ':Mason',
                    },
                    {
                        icon = '󰒲 ',
                        icon_hl = 'group',
                        desc = 'Lazy update',
                        desc_hl = 'group',
                        key = 'u',
                        key_hl = 'group',
                        key_format = ' [u]', -- `%s` will be substituted with value of `key`
                        action = ':Lazy update',
                    },
                    {
                        icon = '󰈆 ',
                        icon_hl = 'group',
                        desc = 'Quit',
                        desc_hl = 'group',
                        key = 'q',
                        key_hl = 'group',
                        key_format = ' [q]', -- `%s` will be substituted with value of `key`
                        action = ':confirm q',
                    },
                },
                footer = {
                    "",
                    "Neovim loaded " .. require('lazy').stats().count .. " plugins",
                }
            }
        }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
}
