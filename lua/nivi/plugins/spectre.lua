return {
	"nvim-pack/nvim-spectre",
	dependencies = { "nvim-lua/plenary.nvim" },
	setup = function()
		require("spectre").setup({
			-- Your configuration options here
			-- For example:
			color_devicons = true,
			open_cmd = "vnew",
			live_update = false,
			lnum_for_results = true,
			result_padding = "¦  ",
			line_sep_start = "┌-----------------------------------------",
			line_sep = "└-----------------------------------------",
			highlight = {
				ui = "String",
				search = "DiffChange",
				replace = "DiffDelete",
			},
			mapping = {
				["tab"] = {
					map = "<Tab>",
					cmd = "<cmd>lua require('spectre').tab()<cr>",
					desc = "next query",
				},
				-- ... other mappings ...
			},
		})
	end,
}
