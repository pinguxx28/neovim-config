return {
	"nvim-lualine/lualine.nvim",

	-- Add icons to files
	dependencies = { "nvim-tree/nvim-web-devicons" },

	config = function()
		require("lualine").setup({
			sections = {
				lualine_x = { "filetype" },	-- Don't display file encoding or fileformat, only filetype
			}
		})
	end
}
