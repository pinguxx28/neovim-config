return {
	"akinsho/toggleterm.nvim",
	version = "*",

	config = function()
		require("toggleterm").setup({})

		vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm direction=tab<cr>", { desc = "Open a new tab terminal" })
		vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "Open a new floating terminal" })
		vim.keymap.set("n", "<leader>ts", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "Split open horizontal terminal" })
		vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical size=40<cr>", { desc = "Split open vertical terminal" })
	end
}
