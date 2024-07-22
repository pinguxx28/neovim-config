return {
	"nvim-treesitter/nvim-treesitter",

	-- Only load when opening a new or old file
	event = { "BufReadPre", "BufNewFile" },

	-- Run when installed or updated
	build = { ":TSUpdate" },

	config = function()
		require("nvim-treesitter.configs").setup({
			-- Languages to always be installed
			ensure_installed = {
				"lua",
				"javascript",
				"c",
				"cpp",
				"markdown"
			},

			-- Enable highlighting
			highlight = {
				enable = true
			}
		})
	end
}
