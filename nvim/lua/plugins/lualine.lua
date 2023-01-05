return {
    {
        "nvim-lualine/lualine.nvim",
        requires = {"kyazdani42/nvim-web-devicons", opt=true},
        config = function()
            require("lualine").setup({
                options = {
                    theme = 'dracula'
                },
                sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {'filename'},
                lualine_x = {},
                lualine_y = {'progress'},
                lualine_z = {'location'}
                },
            })
        end
        }
}

