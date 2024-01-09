return {
    {
        'williamboman/mason.nvim',
        lazy = false,
        opts = {
            ui = {
                icons = {
                    package_installed = '✓',
                    package_pending = '➜',
                    package_uninstalled = '✗'
                }
            }
        },
        config = function(_, opts)
            require('mason').setup(opts)
        end
    },
    {
        'williamboman/mason-lspconfig.nvim',
        opts = {
            ensure_installed = {
                'lua_ls',
                'jedi_language_server',
                'black',
                'isort',
                'flake8',
                'prettier',
                'tsserver',
                'dockerls',
                'solidity_ls_nomicfoundation'
            }
        }
    },
    {
        'neovim/nvim-lspconfig',
        lazy = false,
        config = function()
            local caps = require('cmp_nvim_lsp').default_capabilities()

            require('mason-lspconfig').setup_handlers({
                function(server_name)
                    if (server_name == 'tsserver') then
                        require('lspconfig')[server_name].setup({
                            capabilities = caps,
                            init_options = {
                                preferences = {
                                    disableSuggestions = true
                                }
                            }
                        })
                    else
                        require('lspconfig')[server_name].setup({
                            capabilities = caps
                        })
                    end
                end
            })
        end
    },
    {
        'nvimtools/none-ls.nvim',
        config = function()
            local null_ls = require('null-ls')
            local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

            null_ls.setup({
                on_attach = function(client, bufnr)
                    if client.supports_method('textDocument/formatting') then
                        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
                        vim.api.nvim_create_autocmd('BufWritePre', {
                            group = augroup,
                            buffer = bufnr,
                            callback = function()
                                vim.lsp.buf.format({ async = false })
                            end,
                        })
                    end
                end,
                sources = {
                    null_ls.builtins.formatting.black.with({
                        extra_args = {
                            '--line-length=120'
                        }
                    }),
                    null_ls.builtins.formatting.isort,
                    null_ls.builtins.formatting.trim_newlines,
                    null_ls.builtins.formatting.trim_whitespace,
                    null_ls.builtins.formatting.prettier,
                    null_ls.builtins.diagnostics.flake8.with({
                        extra_args = {
                            '--max-line-length=120'
                        }
                    }),
                    null_ls.builtins.diagnostics.eslint,
                    null_ls.builtins.code_actions.eslint
                }
            })
        end
    }
}
