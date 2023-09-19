local vim = vim

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
-- make sure to set `mapleader` before lazy so your mappings are correct
-- map leader and localleader
vim.g.mapleader = " "
vim.g.maplocalleader = ","



require("lazy_bootstrap")
require("settings")
require("keybinds")
--require("lsptest")
--require("lazy").setup("plugins")
--require("lsp")

