return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		picker = {
			sources = {
				files = {
					hidden = true,
					follow = true,
				},
			},
			icons = {
				files = {
					enabled = false,
				},
			},
			main = {
				file = false,
			},
		},
	},
	keys = {
		{
			"<leader>f",
			function()
				Snacks.picker.files()
			end,
		},
		{
			"<leader>st",
			function()
				Snacks.picker.todo_comments({ keywords = { "TODO", "FIX", "FIXME" } })
			end,
		},
		{
			"<leader>sg",
			function()
				Snacks.picker.grep()
			end,
		},
		{
			"<leader>:",
			function()
				Snacks.picker.command_history()
			end,
		},
		{
			"<leader>sn",
			function()
				Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
			end,
		},
		{
			"<leader>sr",
			function()
				Snacks.picker.recent()
			end,
		},
		-- git
		{
			"<leader>gb",
			function()
				Snacks.picker.git_branches()
			end,
		},
		{
			"<leader>gL",
			function()
				Snacks.picker.git_log_line()
			end,
		},
		{
			"<leader>gs",
			function()
				Snacks.picker.git_diff()
			end,
		},
		-- Grep
		{
			"<leader>/",
			function()
				Snacks.picker.lines()
			end,
		},
		{
			"<leader>*",
			function()
				Snacks.picker.grep_word()
			end,
		},
		-- search
		{
			'<leader>s"',
			function()
				Snacks.picker.registers()
			end,
		},
		{
			"<leader>s/",
			function()
				Snacks.picker.search_history()
			end,
		},
		{
			"<leader>sc",
			function()
				Snacks.picker.command_history()
			end,
		},
		{
			"<leader>d",
			function()
				Snacks.picker.diagnostics()
			end,
		},
		{
			"<leader>sh",
			function()
				Snacks.picker.help()
			end,
		},
		{
			"<leader>si",
			function()
				Snacks.picker.icons()
			end,
		},
		{
			"<leader>sj",
			function()
				Snacks.picker.jumps()
			end,
		},
		{
			"<leader>sk",
			function()
				Snacks.picker.keymaps()
			end,
		},
		{
			"<leader>sm",
			function()
				Snacks.picker.man()
			end,
		},
		{
			"<leader>'",
			function()
				Snacks.picker.resume()
			end,
		},
		-- LSP
		-- {
		-- 	"gd",
		-- 	function()
		-- 		Snacks.picker.lsp_definitions({ include_current = true })
		-- 	end,
		-- },
		-- {
		-- 	"gD",
		-- 	function()
		-- 		Snacks.picker.lsp_declarations()
		-- 	end,
		-- },
		-- {
		-- 	"gr",
		-- 	function()
		-- 		Snacks.picker.lsp_references({ include_current = true })
		-- 	end,
		-- 	nowait = true,
		-- },
		-- {
		-- 	"gi",
		-- 	function()
		-- 		Snacks.picker.lsp_implementations({ include_current = true })
		-- 	end,
		-- },
		-- {
		-- 	"gy",
		-- 	function()
		-- 		Snacks.picker.lsp_type_definitions({ include_current = true })
		-- 	end,
		-- },
		-- {
		-- 	"<leader>ss",
		-- 	function()
		-- 		Snacks.picker.lsp_symbols()
		-- 	end,
		-- },
		-- {
		-- 	"<leader>sS",
		-- 	function()
		-- 		Snacks.picker.lsp_workspace_symbols()
		-- 	end,
		-- },
	},
}
