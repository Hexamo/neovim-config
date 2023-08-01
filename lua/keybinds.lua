local wk = require("which-key")

-- General Keybinds
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit out of insert mode"})
vim.keymap.set("n", "n", "nzz", { desc = "Center search results"})
vim.keymap.set("n", "N", "Nzz", { desc = "Center search results"})
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Visual line wraps up", expr = true})
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Visual line wraps down", expr = true})
vim.keymap.set("v", "<", "<gv", { desc = "Better indent"})
vim.keymap.set("v", ">", ">gv", { desc = "Better indent"})
vim.keymap.set("v", "p", "_dp", { desc = "Paste over selected text"})
vim.keymap.set("n", "<leader><space>", ":let @/=''<CR>", { desc = "Cancel search highlight"})
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", { desc = "better indent"})
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", { desc = "better indent"})
vim.keymap.set("i", "<C-BS>", "<C-o>diw", { desc = "Delete word at a time insert"})
vim.keymap.set("n", "W", "b", { desc = "Jump back a word"})

-- Window management 

-- Keybinds for debugging
vim.keymap.set('n', '<leader>db', function() require('dap').toggle_breakpoint() end)

-- Keybinds for python debugging
vim.keymap.set('n', '<leader>dpr', function() require('dap-python').test_method() end)


-- Keybinds for git
-- Git hunk selection
wk.register({ ["<leader>h"] = { name = "+Git" }, })
vim.keymap.set("n", "<leader>hn", ":Gitsigns next_hunk<CR>", { desc = "Next hunk of git code" })
vim.keymap.set("n", "<leader>hN", ":Gitsigns prev_hunk<CR>", { desc = "Previous hunk of git code" })
vim.keymap.set("n", "<leader>hp", ":Gitsigns preview_hunk<CR>", { desc = "Show current hunk" })
vim.keymap.set("n", "<leader>hs", ":Gitsigns stage_hunk<CR>", { desc = "Stage current hunk" })
vim.keymap.set("n", "<leader>hr", ":Gitsigns reset_hunk<CR>", { desc = "Resets current hunk" })
vim.keymap.set("n", "<leader>hc", ":Git commit | startinsert<CR>", { desc = "Commits what is in buffer" })

-- Telescope edits
wk.register({["<leader>f"] = { name = "+File" },})
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Fuzzy find File" })
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "Fuzzy find Recent File" })
vim.keymap.set("n", "<leader>fl", "<cmd>Telescope live_grep<CR>", { desc = "fuzzy find with grep" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Fuzzy find open File" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope git_commits<CR>", { desc = "Fuzzy find git commits" })

-- LSP Keybinds
wk.register({["<leader>l"] = { name = "+LSP" },})
vim.keymap.set("n", "<leader>lf", ":lua vim.lsp.buf.format({ timeout_ms = 2000})<CR>", { desc = "Format document [LSP]" })
