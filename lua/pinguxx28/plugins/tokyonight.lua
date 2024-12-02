return {
	"folke/tokyonight.nvim",
	name = "tokyonight",
	priority = 1000,
	opts = {},

	config = function()
		vim.cmd[[colorscheme tokyonight-night]]
	end
}
