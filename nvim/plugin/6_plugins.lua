vim.pack.add({
	-- { src = "https://github.com/vague2k/vague.nvim" },
	-- { src = "https://github.com/brenoprata10/nvim-highlight-colors" },
	{ src = "https://github.com/echasnovski/mini.diff" },
	{ src = "https://github.com/echasnovski/mini.move" },
	{ src = "https://github.com/echasnovski/mini.extra" },
	{ src = "https://github.com/echasnovski/mini.pick" },
	{ src = "https://github.com/echasnovski/mini.trailspace" },
	{ src = "https://github.com/kylechui/nvim-surround" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter-context" },
	{ src = "https://github.com/tpope/vim-fugitive" },
})

vim.cmd("packadd vague.nvim")

require("vague").setup({
	italic = false,
	on_highlights = function(hl)
		hl.StatusLine.bg = nil
	end,
})
vim.cmd("colorscheme vague")

---@diagnostic disable-next-line: missing-fields
require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"bash",
		"query",
		"c",
		"diff",
		"editorconfig",
		"git_config",
		"git_rebase",
		"gitattributes",
		"gitcommit",
		"gitignore",
		"javascript",
		"typescript",
		"jsdoc",
		"json",
		"jsonc",
		"lua",
		"luadoc",
		"make",
		"markdown",
		"markdown_inline",
		"python",
		"ssh_config",
		"toml",
		"vim",
		"vimdoc",
	},
	sync_install = false,
	auto_install = true,
	highlight = { enable = true },
})

require("mini.extra").setup()
require("mini.diff").setup({
	view = {
		style = "sign",
		signs = { add = "+", change = "~", delete = "_" },
		priority = 1,
	},
})
vim.keymap.set("", "<leader>gd", MiniDiff.toggle_overlay)

local pick = require("mini.pick")
pick.setup({
	source = {
		show = pick.default_show,
	},
})

vim.keymap.set("", "<leader>f", MiniPick.builtin.files)
vim.keymap.set("", "<leader>'", MiniPick.builtin.resume)
vim.keymap.set("", "<leader>sg", MiniExtra.pickers.git_hunks)
vim.ui.select = MiniPick.ui_select

require("mini.move").setup()
require("mini.trailspace").setup()

require("treesitter-context").setup({
	enable = true,
	max_lines = 5,
	mode = "topline",
	multiwindow = true,
})
