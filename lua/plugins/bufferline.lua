return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require("bufferline").setup{
            options = {
                hover = {
                        enabled = true,
                        delay = 200,
                        reveal = {'close'}
                },
                diagnostics_indicator = function(count, level, diagnostics_dict, context)
                    local icon = level:match("error") and " " or " "
                    return " " .. icon .. count
                end,
                offsets = {
                    { filetype = "NvimTree", text = "", text_align = "left", padding = 1 },
                },
                show_tab_indicators = true,
                sort_by = "directory",
            }
        }
    end,
}
--[[
require("bufferline").setup{
    options = {
        hover = {
                enabled = true,
                delay = 200,
                reveal = {'close'}
        },
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
        end,
        offsets = {
			{ filetype = "NvimTree", text = "", text_align = "left", padding = 1 },
		},
        show_tab_indicators = true,
		sort_by = "directory",
    }
}
--]]
