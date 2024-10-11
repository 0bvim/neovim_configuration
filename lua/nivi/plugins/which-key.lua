return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
	config = function()
		local wk = require("which-key")
		wk.add({
			{ "<leader>e", group = "Files Tree" }, -- group
			{ "<leader>f", group = "Find" }, -- group
			{ "<leader>c", group = "Code Action", mode = { "n", "v" } }, -- group
			{ "<leader>m", group = "Format", mode = { "n", "v" } }, -- group
			{ "<leader>r", group = "Rename" }, -- group
			{ "<leader>s", group = "Window" }, -- group
			{ "<leader>t", group = "Tab" }, -- group
			{ "<leader>w", group = "Session" }, -- group
			{ "<leader>x", group = "Trouble" }, -- group
			{ "<leader>q", group = "Quit" }, -- group
			{ "<leader>g", group = "Git" }, -- group
			{
				mode = { "n" },
				{ "<C-a>", "ggVG", desc = "Selec All" },
				{ "<leader>h", ":nohl<CR>", desc = "Clear search highlights" },
				{ "<leader>gb", ":GitBlameToggle<CR>", desc = "On/Off blame" },
				{ "<leader>gl", "<cmd>LazyGit<cr>", desc = "LazyGit" },
				{ "<leader>qq", ":qa<CR>", desc = "Close all buffers" },
				{ "<leader>qf", ":qa!<CR>", desc = "Close all and discard changes" },
				{ "<leader>qF", ":xa!<CR>", desc = "Close all and force save changes" },
				{ "<leader>qc", ":q<CR>", desc = "Close current buffer" },
				{ "<leader>qs", ":w!<CR>", desc = "Force save file" },
				{ "<C-s>", ":w<CR>", desc = "Save current buffer" },
				{ "<leader>sv", "<C-w>v", desc = "Split vertically" },
				{ "<leader>sh", "<C-w>s", desc = "Split horizontally" },
				{ "<leader>se", "<C-w>=", desc = "Split Make split equals sizer" },
				{ "<leader>sx", "<cmd>close<CR>", desc = "close windows" },
				{ "<leader>to", "<cmd>tabnew<CR>", desc = "Open new tab" },
				{ "<leader>tx", "<cmd>tabclose<CR>", desc = "Close current tab" },
				{ "<leader>tn", "<cmd>tabn<CR>", desc = "go to next tab" },
				{ "<leader>tp", "<cmd>tabnep<CR>", desc = "go to previous tab" },
				{ "<leader>tf", "<cmd>tabnew %<CR>", desc = "open current buffer in new tab" },
				{ "<A-j>", ":m .+1<CR>==", noremap = true, silent = true },
				{ "<A-k>", ":m .-2<CR>==", noremap = true, silent = true },
				{
					"<leader>S",
					'<cmd>lua require("spectre").toggle()<CR>',
					noremap = true,
					silent = true,
					desc = "Toggle Spectre",
				},
				{
					"<leader>sw",
					'<cmd>lua require("spectre").open_visual({select_word=true})<CR>',
					noremap = true,
					silent = true,
					desc = "Search current word",
				},
				{
					"<leader>sw",
					'<esc><cmd>lua require("spectre").open_visual()<CR>',
					noremap = true,
					silent = true,
					desc = "Search current word",
				},
				{
					"<leader>sp",
					'<cmd>lua require("spectre").open_file_search({select_word=true})<CR>',
					noremap = true,
					silent = true,
					desc = "Search on current file",
				},
			},
			{
				mode = { "i" },
				{ "jk", "<ESC>", desc = "Exit insert mode with jk" },
				{ "<A-j>", "<Esc>:m .+1<CR>==gi", noremap = true, silent = true },
				{ "<A-k>", "<Esc>:m .-2<CR>==gi", noremap = true, silent = true },
			},
			{
				mode = { "v" },
				{ "<A-j>", ":m '>+1<CR>gv=gv", noremap = true, silent = true },
				{ "<A-k>", ":m '<-2<CR>gv=gv", noremap = true, silent = true },
			},
		})
	end,
}
