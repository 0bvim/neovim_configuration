return {
	"tzachar/local-highlight.nvim",
	config = function()
		require("local-highlight").setup({
			file_types = nil,
			disable_file_types = { "tex" },
			hlgroup = "Search",
			cw_hlgroup = nil,
			insert_mode = false,
			min_match_len = 1,
			max_match_len = math.huge,
			highlight_single_match = true,
		})
	end,
}
