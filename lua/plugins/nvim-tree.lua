return {
	"nvim-tree/nvim-tree.lua",
    keys = {
        {"<leader>to", ":NvimTreeToggle<CR>", desc = "Opens up Nvim Tree"},
    },
    dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        tag = "nightly",
        config = function()
		require("nvim-tree").setup({
			view = {
				hide_root_folder = true,
			},
			renderer = {
				indent_markers = {
					enable = true,
				},
				icons = {
					show = {
						file = true,
						folder = true,
						folder_arrow = false,
						git = true,
					},
				},
			},
		})
        end,
}
