return {
	"vague2k/vague.nvim",
	-- dir = "~/dev/vague.nvim",
	lazy = false,
	priority = 1000,
	---@module 'vague'
	---@type VagueColorscheme.Config
	opts = {
		italic = false,
		on_highlights = function(hl)
			hl.StatusLine.bg = nil
		end,
	},
}
