return {
    'folke/noice.nvim',
    event = 'VeryLazy',
    dependencies = {
        'MunifTanjim/nui.nvim',
        'nvim-notify',
        'rcarriga/nvim-notify'
    },
    config = function()
        require('noice').setup({
            lsp = {
                override = {
                    ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
                    ['vim.lsp.util.stylize_markdown'] = true,
                    ['cmp.entry.get_documentation'] = true
                }
            },
            presets = {
                inc_rename = true
            }
        })

        require('notify').setup({
            stages = 'fade_in_slide_out',
            timeout = 5000,
            background_colour = '#000000'
        })
    end
}
