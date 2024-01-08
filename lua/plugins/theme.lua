return {
    {
        'catppuccin/nvim',
        name = 'catppuccin',
        lazy = false,
        priority = 1000,
        opts = {
            flavour = 'mocha', -- latte, frappe, macchiato, mocha
            transparent_background = true
        },
        config = function(_, opts)
            require("catppuccin").setup(opts)
            vim.cmd.colorscheme 'catppuccin'
        end
    },
    {
        'norcalli/nvim-colorizer.lua',
        opts = {
            '*'
        }
    },
    {
        'VonHeikemen/searchbox.nvim',
        dependencies = {
            'MunifTanjim/nui.nvim'
        }
    }
}
