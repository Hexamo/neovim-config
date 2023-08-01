local wk = require("which-key")

-- Keybinds for debugging
vim.keymap.set('n', '<leader>db', function() require('dap').toggle_breakpoint() end)

-- Keybinds for python debugging
vim.keymap.set('n', '<leader>dpr', function() require('dap-python').test_method() end)

-- Keybinds for git
-- Git hunk selection
wk.register({
    ["<leader>h"]   =   { name = "GitHunk"},
    ["<leader>hn"]  =   {":Gitsigns next_hunk<CR>","Next hunk of git code"},
    ["<leader>hN"]  =   {":Gitsigns prev_hunk<CR>","Previous hunk of git code"},
    ["<leader>hp"]  =   {":Gitsigns preview_hunk<CR>","Show current hunk"},
    ["<leader>hs"]  =   {":Gitsigns stage_hunk<CR>","Stage current hunk"},
    ["<leader>hr"]  =   {":Gitsigns reset_hunk<CR>","Resets current hunk"},
})

-- Telescope edits

vim.cmd('map <Leader>lf :lua vim.lsp.buf.format({ timeout_ms = 2000 })<CR>')
