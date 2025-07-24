return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	branch = "main",
	---@module 'nvim-treesitter'
	---@type TSConfig
	opts = {
		ensure_installed = {
			"bash",
			"c",
			"cmake",
			"diff",
			"html",
			"javascript",
			"jsdoc",
			"lua",
			"luadoc",
			"markdown",
			"markdown_inline",
			"query",
			"vim",
			"vimdoc",
			"toml",
			"json",
			"jsonc",
			"yaml",
			"git_config",
			"git_rebase",
			"gitattributes",
			"gitcommit",
			"gitignore",
		},
		highlight = {
			enable = true,
		},
		indent = { enable = true },
	},
}
