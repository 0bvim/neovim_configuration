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
			{
				mode = { "n" },
				{ "<C-a>", "ggVG", desc = "Selec All" },
				{ "<leader>h", ":nohl<CR>", desc = "Clear search highlights" },
				{ "<leader>q", ":qa<CR>", desc = "Close all buffers" },
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
