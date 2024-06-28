return {
	"folke/which-key.nvim",
	event = "VeryLazy",		-- Not so important

	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500	-- If 500 ms idle
	end,

	-- Options to be called on setup
	opts = {
	},
}
