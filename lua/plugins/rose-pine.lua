return {
  "rose-pine/neovim",
  name = "rose-pine",
  priority = 1000,
  config = function()
    require("rose-pine").setup({
      variant = "moon",
      dark_variant = "main",
      disable_background = "true",
    })
  end,
}
