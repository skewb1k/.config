return {
	-- "vague2k/vague.nvim",
	dir = "~/dev/vague.nvim",
	lazy = false,
	priority = 1000,
	--- @type VagueColorscheme.InternalConfig
	opts = {
		italic = false,
		on_highlights = function(highlights, _)
			highlights.StatusLine = { bg = nil }
		end,
	},
	-- config = function()
	-- 	require('vague').setup(
	-- 		{
	-- 			italic = false,
	-- 			-- on_highlights = function(hl, _)
	-- 			-- 	hl.NeoTreeWinSeparator = { fg = nil, bg = nil }
	-- 			-- end,
	-- 		}
	-- 	)
	-- 	vim.cmd 'colorscheme vague'
	-- 	vim.cmd("hi statusline guibg=NONE")
	-- end
}
