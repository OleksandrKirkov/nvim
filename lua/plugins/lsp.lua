require("mason").setup()
require("mason-lspconfig").setup()

require("mason-lspconfig").setup {
    ensure_installed = {
        "lua_ls",
        "ts_ls",
        "tsp_server",
        "html",
        "cssls",
        "cssmodules_ls",
        "eslint",
        "jsonls",
        "markdown_oxide",
        "omnisharp",
        "yamlls",
        "taplo",
        "tailwindcss",
    },

    handlers = {
        function(server_name)
            require("lspconfig")[server_name].setup {}
        end,

        ["lua_ls"] = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" }
                        }
                    }
                }
            }
        end
    }
}

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig")["ts_ls"].setup { capabilities = capabilities }
require("lspconfig")["cssls"].setup { capabilities = capabilities }
require("lspconfig")["tailwindcss"].setup { capabilities = capabilities }
require("lspconfig")["omnisharp"].setup {
    settings = {
        omnisharp = {
            enableRoslynAnalyzers = true,
            enableImportCompletion = true,
            enableCodeActions = true,
        }
    },
}
