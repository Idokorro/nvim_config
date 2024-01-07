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
            ensure_installed = { 'lua_ls', 'jedi_language_server' }
        }
    },
    {
        'neovim/nvim-lspconfig',
        lazy = false,
        config = function()
            local caps = require('cmp_nvim_lsp').default_capabilities()

            require('mason-lspconfig').setup_handlers({
                function (server_name)
                    require('lspconfig')[server_name].setup({
                        capabilities = caps
                    })
                end
            })
        end
    },
    {
        'nvimtools/none-ls.nvim',
        config = function()
            local null_ls = require('null-ls')

            null_ls.setup({
                sources = {
                    null_ls.builtins.formatting.black.with({
                        extra_args = {
                            '--line-length=120'
                        }
                    }),
                    null_ls.builtins.formatting.isort,
                    null_ls.builtins.formatting.trim_newlines,
                    null_ls.builtins.formatting.trim_whitespace,
                    null_ls.builtins.diagnostics.flake8.with({
                        prefer_local = '.venv/bin',
                        extra_args = {
                            '--max-line-length=120'
                        }
                    })
                }
            })
        end
    }
}
