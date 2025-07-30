require("config.options")
require("config.lsp")
require("config.autocmds")
require("config.keymaps")
require("config.registers")

vim.pack.add({
	-- { src = "https://github.com/vague2k/vague.nvim" },
	{ src = "https://github.com/brenoprata10/nvim-highlight-colors" },
	{ src = "https://github.com/echasnovski/mini.diff" },
	{ src = "https://github.com/echasnovski/mini.move" },
	{ src = "https://github.com/echasnovski/mini.pick" },
	{ src = "https://github.com/echasnovski/mini.trailspace" },
	{ src = "https://github.com/kylechui/nvim-surround" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter-context" },
})

vim.cmd("packadd vague.nvim")

require("vague").setup({
	italic = false,
	on_highlights = function(hl)
		hl.StatusLine.bg = nil
	end,
})
vim.cmd("colorscheme vague")

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
		"ql",
		"ssh_config",
		"toml",
		"vim",
		"vimdoc",
	},
	sync_install = false,
	auto_install = true,
	highlight = { enable = true },
})

require("mini.diff").setup({
	view = {
		style = "sign",
		signs = { add = "+", change = "~", delete = "_" },
		priority = 1,
	},
})
vim.keymap.set("", "<leader>gd", MiniDiff.toggle_overlay)

require("mini.pick").setup()
vim.keymap.set("", "<leader>f", MiniPick.builtin.files)
vim.keymap.set("", "<leader>'", MiniPick.builtin.resume)

require("mini.move").setup()
require("mini.trailspace").setup()

require("treesitter-context").setup({
	enable = true,
	max_lines = 5,
	mode = "topline",
	multiwindow = true,
})

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
		-- vim.lsp.semantic_tokens.enable(false)
		-- vim.lsp.semantic_tokens.force_refresh()
		if client:supports_method("textDocument/completion") then
			-- Optional: trigger autocompletion on EVERY keypress. May be slow!
			-- local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
			-- client.server_capabilities.completionProvider.triggerCharacters = chars
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
		end
	end,
})

vim.ui.select = MiniPick.ui_select
