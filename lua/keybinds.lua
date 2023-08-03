local wk = require("which-key")

-- General No leader keybinds 
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
wk.register({ ["<leader>w"] = { name = "+Window" }, })
vim.keymap.set("n", "<leader>wv", ":vsp<CR>", { desc = "Split window verical"})
vim.keymap.set("n", "<leader>wh", ":sp<CR>", { desc = "Split window horisontal"})
vim.keymap.set("n", "<leader>we", "<C-W>=", { desc = "Make windows equal"})
vim.keymap.set("n", "<leader>wf", "<C-W>|<C-W>_", { desc = "Fullscreen current window"})
vim.keymap.set("n", "<C-A-h>", ":vertical resize -5<CR>", { desc = "- Vertical size"})
vim.keymap.set("n", "<C-A-j>", ":resize +5<CR>", { desc = "+Horisontal size"})
vim.keymap.set("n", "<C-A-k>", ":resize -5<CR>", { desc = "-Horisontal size"})
vim.keymap.set("n", "<C-A-l>", ":vertical resize +5<CR>", { desc = "+Vertical size"})
vim.keymap.set("n", "<C-h>", "<C-W><C-H>", { desc = "Move to right window"})
vim.keymap.set("n", "<C-j>", "<C-W><C-J>", { desc = "Move to down window"})
vim.keymap.set("n", "<C-k>", "<C-W><C-K>", { desc = "Move to up window"})
vim.keymap.set("n", "<C-l>", "<C-W><C-L>", { desc = "Move to left window"})

-- Keybinds for debugging
wk.register({ ["<leader>d"] = { name = "+Debug" }, })
vim.keymap.set('n', '<leader>db', function() require('dap').toggle_breakpoint() end, { desc = "Toggle breakpoint"})

-- Keybinds for python debugging
wk.register({ ["<leader>dp"] = { name = "+PythonDebug" }, })
vim.keymap.set('n', '<leader>dpr', function() require('dap-python').test_method() end, {desc = "Start Python debugger"})

-- Nvim Tree keybinds
wk.register({ ["<leader>t"] = { name = "+Tree" }, })
vim.keymap.set("n", "<leader>to", ":NvimTreeOpen<CR>", { desc = "Opens up Nvim Tree" })
vim.keymap.set("n", "<leader>tc", ":NvimTreeClose<CR>", { desc = "Closes Nvim Tree" })
vim.keymap.set("n", "<leader>tf", ":NvimTreeFocus<CR>", { desc = "Focus on Nvim Tree" })

-- Keybinds for git
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
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope git_status<CR>", { desc = "Fuzzsy finder for git changes" })

-- LSP Keybinds
wk.register({["<leader>l"] = { name = "+LSP" },})
vim.keymap.set("n", "<leader>lf", ":lua vim.lsp.buf.format({ timeout_ms = 2000})<CR>", { desc = "Format document [LSP]" })
