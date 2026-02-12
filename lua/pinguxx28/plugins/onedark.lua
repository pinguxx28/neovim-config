return {
	'navarasu/onedark.nvim',

	config = function()
		require("onedark").setup({
			style = "darker",	-- Set variant
			transparent = true
		})

		vim.cmd("colorscheme onedark")
	end
}
