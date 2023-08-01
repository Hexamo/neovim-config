local alpha = require "alpha"

local headers = {
  ["nvim"] = {
    "                                                     ",
    "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
  },
}

local dashboard = require "alpha.themes.dashboard"
dashboard.section.header.val = headers.nvim

dashboard.section.buttons.val = {
  dashboard.button("f", "  Find File", ":Telescope find_files<CR>"),
  dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("r", "󰣿  Recent Files", ":Telescope oldfiles<CR>"),
  dashboard.button("t", "󰈞  Find Text", ":Telescope live_grep<CR>"),
  dashboard.button("c", "  Configuration", ":e $MYVIMRC<CR>"),
  dashboard.button("u", "  Update Plugins", ":Lazy update<CR>"),
  dashboard.button("q", "  Quit Neovim", ":qa!<CR>"),
}

vim.api.nvim_create_autocmd("User", {
        pattern = "LazyVimStarted",
        callback = function()
            local version = " " .. vim.version().major .. "." .. vim.version().minor .. "." .. vim.version().patch
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            dashboard.section.footer.val = version .. "  󰂖 " .. stats.count .. "  󱐿 " .. ms .. " ms"
            pcall(vim.cmd.AlphaRedraw)
        end,
      })

dashboard.section.footer.opts.hl = "AlphaFooter"
dashboard.section.header.opts.hl = "AlphaHeader"
dashboard.section.buttons.opts.hl = "AlphaButton"

dashboard.opts.opts.noautocmd = false
alpha.setup(dashboard.opts)
