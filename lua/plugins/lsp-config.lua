return {
    {
      "williamboman/mason.nvim",
      config = function()
        require("mason").setup({
            ui = {
                icons = {
                    package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
                }
            }
        })
      end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- default settings
            vim.lsp.config('*', {
                capabilities = {
                textDocument = {
                    semanticTokens = {
                    multilineTokenSupport = true,
                    }
                }
                },
                root_markers = { '.git' },
            })
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            
            -- enable lsp for each language
            vim.lsp.enable('lua-language-server')
            vim.lsp.enable('clangd')
            vim.lsp.enable('omnisharp')
            vim.lsp.enable('pyright')
            vim.lsp.enable('typescript-language-server')
            vim.lsp.enable('marksman')

            -- keymaps
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n','gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n','gr', vim.lsp.buf.references, {})
            vim.keymap.set('n','<leader>ca', vim.lsp.buf.code_action, {})

            -- enable diagnostics
            vim.diagnostic.config({ virtual_text = true }) 
        end
    },  
    {
        "mason-org/mason-lspconfig.nvim",
        config = function() 
            require("mason-lspconfig").setup({})
        end
    },
}

