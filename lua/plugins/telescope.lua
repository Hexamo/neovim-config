return {
	"nvim-telescope/telescope.nvim",
    dependencies = {
        { "nvim-lua/popup.nvim" },
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        { "nvim-lua/plenary.nvim" },
        { "nvim-tree/nvim-web-devicons" },
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")
        telescope.setup({
            defaults = {
                path_display = { "truncate " },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                        ["<C-j>"] = actions.move_selection_next, -- move to next result
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                    },
                },
                layout_config = {
                    prompt_position = 'top',
                },
                prompt_prefix = '  ',
                sorting_strategy = 'ascending',
            },
            pickers = {
                find_files = {
                    find_command = {'rg', '--files', '--hidden', '-g', '!.git'},
                    layout_config = {height = 0.70}
                },
                buffers = {show_all_buffers = true},
                live_grep = {
                    previewer = false,
                    theme = "dropdown"
                },
                git_status = {
                    git_icons = {
                        added = " ",
                        changed = " ",
                        copied = " ",
                        deleted = " ",
                        renamed = "➡",
                        unmerged = " ",
                        untracked = " ",
                    },
                    previewer = false,
                    theme = "dropdown"
                }
              }
        })
        telescope.load_extension("fzf")
    end,
}
