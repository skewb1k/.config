return {
	'echasnovski/mini.diff',
	-- dir = '~/dev/mini.nvim',
	version = false,
	---@module 'mini.diff'
	---@type MiniDiffConfig
	opts = {
		view = {
			style = 'sign',
		},
		options = {
			algorithm = {},
		},
	},
	config = function()
		local diff = require("mini.diff")
		---@module 'mini.diff'
		---@type MiniDiffConfig
		diff.setup({
			options = {
			},
			view = {
				style = "sign",
				signs = { add = "+", change = "~", delete = "_" },
				priority = 1,
			},
		})
		vim.keymap.set("n", "<leader>gd", diff.toggle_overlay)
	end
}
