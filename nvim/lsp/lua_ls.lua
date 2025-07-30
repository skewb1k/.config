return {
	cmd = { "/home/skewb1k/dev/lua-language-server/bin/lua-language-server" },
	filetypes = { "lua" },
	root_markers = {
		".luarc.json",
		".luarc.jsonc",
		".luacheckrc",
		".stylua.toml",
		"stylua.toml",
		"selene.toml",
		"selene.yml",
		".git",
	},
	settings = {

		Lua = {
			telemetry = {
				enable = false,
			},
			runtime = {
				version = "LuaJIT",
			},
		},
	},
}
