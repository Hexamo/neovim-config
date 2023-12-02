return {
	"williamboman/mason.nvim",
  	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"jayp0521/mason-null-ls.nvim",
	},
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        
        -- enable mason and configure icons
        mason.setup({
          ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
          }
        })

        mason_lspconfig.setup({
            -- List of language servers mason will keep installed
            ensure_installed = {
                "gopls",
                "pylsp",
                "yamlls",
                "marksman",
                "lua_ls",
                "bashls",
            },
            -- auto-install servers configured above
            automatic_installation = true,
        })
    end,
}
