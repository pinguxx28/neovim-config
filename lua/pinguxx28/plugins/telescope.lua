return {
	"nvim-telescope/telescope.nvim",
	-- branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",

		-- Performace matters a lot on my machine
		-- This is supposed to make sorting faster
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },

		-- Add icons to files
		{ 'nvim-tree/nvim-web-devicons' }
	},

	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "smart" }	-- Make file paths shorter
			}
		})

		-- Load the faster sorting
		telescope.load_extension("fzf")

		-- Keymaps
		vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find file in cwd" })
		vim.keymap.set("n", "<leader>fl", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
		vim.keymap.set("n", "<leader>fg", "<cmd>Telescope grep_string<cr>", { desc = "Find selected string in cwd" })
	end
}
