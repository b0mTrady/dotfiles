return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        {'nvim-lua/plenary.nvim'},
        {'BurntSushi/ripgrep'},
        {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },             },
    config = function()
    local telescope = require('telescope')
    telescope.setup{
        }
    telescope.load_extension('fzf')
end
}
