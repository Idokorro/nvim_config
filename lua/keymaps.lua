-- Global
vim.keymap.set('n', '<Home>', '_')
vim.keymap.set('i', '<Home>', '<ESC>_i')

-- Telescope
vim.keymap.set('n', '<leader>ff', Telescope.find_files, {})
vim.keymap.set('n', '<leader>fg', Telescope.live_grep, {})
vim.keymap.set('n', '<leader>fb', Telescope.buffers, {})
vim.keymap.set('n', '<leader>fh', Telescope.help_tags, {})

-- Neotree
vim.keymap.set('n', '<C-n>', ':Neotree filesystem toggle<CR>')

-- LSP
vim.keymap.set('n', 'D', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'I', vim.lsp.buf.hover, {})
vim.keymap.set({'v', 'n'}, 'C', vim.lsp.buf.code_action, {})

vim.keymap.set('n', '<leader>bf', vim.lsp.buf.format, {})
