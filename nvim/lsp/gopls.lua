return {
	cmd = { "lsproxy", "gopls" },
	-- cmd = { "gopls" },
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
	root_markers = {
		".git",
		"go.mod",
		"go.sum",
	},
}
