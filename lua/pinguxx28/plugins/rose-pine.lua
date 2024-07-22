return {
	"rose-pine/neovim",
	name = "rose-pine",
	priority = 1000,

	config = function()
		require("rose-pine").setup({
			-- Set variant
			variant = "moon",
			dark_variant = "moon",

			-- Make inactive windows a bit dimmed
			dim_inactive_windows = true,

			styles = {
				bold = true,	-- Enable bold fonts
				italic = false	-- Disable italic fonts
			}
		})

		-- Actually set the colorscheme
		--vim.cmd("colorscheme rose-pine")
	end
}
