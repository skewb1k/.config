return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.trailspace").setup()
		-- vim.api.nvim_create_autocmd('BufWritePre', {
		--   group = vim.api.nvim_create_augroup('trailspace', { clear = true }),
		--   callback = trailspace.trim,
		-- })

		require("mini.move").setup()

		require("mini.align").setup()

		require("mini.diff").setup({
			view = {
				style = "sign",
				signs = { add = "+", change = "~", delete = "_" },
				priority = 1,
			},
		})
		vim.keymap.set("n", "<leader>gd", require("mini.diff").toggle_overlay)
	end,
}
