-- Global
vim.keymap.set('n', '<Home>', '_')
vim.keymap.set('i', '<Home>', '<ESC>_i')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-s>', ':wall<CR>')

-- Telescope
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {})
vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, {})
vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, {})
vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, {})

-- Neotree
vim.keymap.set('n', '<C-n>', ':Neotree filesystem toggle<CR>')

-- LSP
vim.keymap.set('n', 'D', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'I', vim.lsp.buf.hover, {})
vim.keymap.set({ 'v', 'n' }, 'C', vim.lsp.buf.code_action, {})

vim.keymap.set('n', '<leader>bf', vim.lsp.buf.format, {})

-- LazyGit
vim.keymap.set('n', '<leader>gg', '<cmd>:LazyGit<CR>')

-- Debug
vim.keymap.set('n', '<C-b>', require('dap').toggle_breakpoint, {})
vim.keymap.set('n', '<leader>dr', require('dap').continue, {})
vim.keymap.set('n', '<C-o>', require('dap').step_over, {})
vim.keymap.set('n', '<C-i>', require('dap').step_into, {})
vim.keymap.set('n', '<C-p>', require('dap').terminate, {})
vim.keymap.set('n', '<M-i>', '<cmd>:lua require("dapui").eval()<CR>')

-- Search / replace box
vim.keymap.set('n', '/', ':SearchBoxMatchAll<CR>')
vim.keymap.set('n', '<C-r>', ':SearchBoxReplace<CR>')

-- Comment
-- line = 'gcc'
-- block = 'gbc'
-- above = 'gcO'
-- below = 'gco'
-- eol = 'gcA'

-- Luasnip
-- ['<C-b>'] = scroll_docs up
-- ['<C-f>'] = scroll_docs down
-- ['<C-Space>'] = complete
-- ['<C-e>'] = abort
-- ['<CR>'] = confirm
-- TAB = next
-- S-TAB = previous

-- Rename tag
-- ciw name <ESC>
