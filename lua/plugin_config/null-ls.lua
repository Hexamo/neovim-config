local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.mypy,
        null_ls.builtins.diagnostics.ruff,
        null_ls.builtins.formatting.black,
    }
})
--[[
require("null-ls").setup({
    ensure_installed = {
        "pytight",
        "lua_ls",
        "pyright",
        "terraformls",
        "bashls",
        "dockerls",
        "yamlls",
        "mypy",
        "ruff",
        "black",
    },
})
--]]
