return {
	'navarasu/onedark.nvim',

	config = function()
		require("onedark").setup({
			style = "darker",	-- Set variant
			transparent = true
		})
	end
}
