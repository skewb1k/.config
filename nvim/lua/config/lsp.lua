vim.diagnostic.config({
	severity_sort = true,
	float = { source = "if_many" },
	underline = { severity = vim.diagnostic.severity.ERROR },
	virtual_text = {
		source = "if_many",
		spacing = 2,
	},
})

vim.lsp.enable({
	"gopls",
	"lua_ls",
	"rust_analyzer",
	"biome",
	"ts_ls",
	"golangci_lint_ls",
	"jsonls",
	"bashls",
	"yamlls",
	"clangd",
	"basedpyright",
	"taplo",
})
