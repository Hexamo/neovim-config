
-- Keybinds for debugging
vim.keymap.set('n', '<leader>db', function() require('dap').toggle_breakpoint() end)

-- Keybinds for python debugging
vim.keymap.set('n', '<leader>dpr', function() require('dap-python').test_method() end)

vim.cmd('map <Leader>lf :lua vim.lsp.buf.format({ timeout_ms = 2000 })<CR>')
