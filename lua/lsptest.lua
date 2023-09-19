vim.lsp.start({
  name = 'lua',
  cmd = {'lua-language-server'},
  root_dir = vim.fs.dirname(vim.fs.find({'init.lua'}, { upward = true })[1]),
})
