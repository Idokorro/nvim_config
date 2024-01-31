return {
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make'
    },
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'debugloop/telescope-undo.nvim'
        },
        config = function()
            require('telescope').load_extension('fzf')
        end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            require('telescope').setup({
                extensions = {
                    ['ui-select'] = {
                        require('telescope.themes').get_cursor({})
                    },
                    undo = {
                        use_delta = true,
                        use_custom_command = nil,
                        side_by_side = false,
                        diff_context_lines = vim.o.scrolloff,
                        entry_format = 'state #$ID, $STAT, $TIME',
                        time_format = '',
                        saved_only = false
                    }
                }
            })

            require('telescope').load_extension('ui-select')
            require('telescope').load_extension('undo')
        end
    }
}
