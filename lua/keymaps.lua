-- Global
vim.keymap.set('n', '<Home>', '_')
vim.keymap.set('i', '<Home>', '<ESC>_i')

vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

vim.keymap.set('i', '<C-h>', '<Left>')
vim.keymap.set('i', '<C-j>', '<Down>')
vim.keymap.set('i', '<C-k>', '<Up>')
vim.keymap.set('i', '<C-l>', '<Right>')

vim.keymap.set('n', '<C-s>', ':wall<CR>')

-- tmux-navigator
vim.keymap.set('n', '<C-h>', '<CMD>TmuxNavigateLeft<CR>')
vim.keymap.set('n', '<C-j>', '<CMD>TmuxNavigateDown<CR>')
vim.keymap.set('n', '<C-k>', '<CMD>TmuxNavigateUp<CR>')
vim.keymap.set('n', '<C-l>', '<CMD>TmuxNavigateRight<CR>')

-- Inc rename
vim.keymap.set('n', '<leader>rn', function()
    return ':IncRename ' .. vim.fn.expand('<cword>')
end, { expr = true })

-- Telescope
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {})
vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, {})
vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, {})
vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, {})
vim.keymap.set('n', '<leader>fn', '<CMD>Telescope notify<CR>')
vim.keymap.set('n', '<leader>u', '<CMD>Telescope undo<CR>')

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
vim.keymap.set('n', '<M-i>', '<cmd>lua require("dapui").eval()<CR>')

-- Trouble
vim.keymap.set('n', '<leader>tt', '<cmd>TroubleToggle<cr>', {})
vim.keymap.set('n', '<leader>tw', '<cmd>TroubleToggle workspace_diagnostics<cr>', {})
vim.keymap.set('n', '<leader>td', '<cmd>TroubleToggle document_diagnostics<cr>', {})
vim.keymap.set('n', '<leader>tq', '<cmd>TroubleToggle quickfix<cr>', {})

-- Gitsigns
vim.keymap.set('n', '<leader>gp', '<cmd>Gitsigns preview_hunk<cr>', {})
vim.keymap.set('n', '<leader>gr', '<cmd>Gitsigns reset_hunk<cr>', {})

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
