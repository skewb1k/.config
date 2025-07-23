return {
	'echasnovski/mini.diff',
	version = false,
	config = function()
		local diff = require("mini.diff")
		diff.setup({
			view = {
				style = "sign",
				signs = { add = "+", change = "~", delete = "_" },
				priority = 1,
			},
		})
		vim.keymap.set("n", "<leader>gd", diff.toggle_overlay)
	end
}
