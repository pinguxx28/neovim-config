return {
	"stevearc/oil.nvim",

	config = function()
		require("oil").setup({
			delete_to_trash = true,					-- If I f*ck up
			skip_confirm_for_simple_edits = true,	-- Let me f*ck up

			view_options = {
				show_hidden = true	-- View dotfiles
			},
		})

		vim.keymap.set("n", "<leader>e", "<cmd>Oil<cr>", { desc = "Open netrw" })
	end
}
