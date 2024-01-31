return {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        'MunifTanjim/nui.nvim'
    },
    opts = {
        close_if_last_window = true,
        popup_border_style = 'rounded',
        window = {
            position = 'float',
            popup = {
                size = { height = '35', width = '50' },
                position = '50%'
            },
            mappings = {
                ['P'] = { 'toggle_preview', config = { use_float = true, use_image_nvim = false } },
                ['<2-LeftMouse>'] = 'open'
            }
        },
        filesystem = {
            filtered_items = {
                visible = true,
                hide_dotfiles = true,
                hide_gitignored = true
            },
            follow_current_file = {
                enabled = true,
                leave_dirs_open = false
            },
            use_libuv_file_watcher = true
        }
    }
}
