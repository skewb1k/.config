local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out,                            "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	require("plugins.colorscheme"),
	require("plugins.mini-diff"),
	require("plugins.mini-trailspace"),
	require("plugins.mini-move"),
	-- require("plugins.mini"),
	require("plugins.snacks"),
	require("plugins.treesitter"),
	require("plugins.treesitter-context"),
	require("plugins.blink"),
	require("plugins.surround"),
	require("plugins.colorizer"),
	require("plugins.diffview"),
	-- require 'plugins.todo-comments',
	-- require 'plugins.kulala',

	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},

	{ "ngynkvn/gotmpl.nvim", opts = {} },
	-- {
	--   'f-person/git-blame.nvim',
	--   event = 'VeryLazy',
	--   opts = {
	--     enabled = true, -- if you want to enable the plugin
	--     message_template = ' <summary> • <date> • <author> • <<sha>>', -- template for the blame message, check the Message template section for more options
	--     date_format = '%m-%d-%Y %H:%M:%S', -- template for the date, check Date format section for more options
	--     virtual_text_column = 1, -- virtual text start column, check Start virtual text at column section for more options
	--   },
	-- },
})
