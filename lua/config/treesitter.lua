require("nvim-treesitter.configs").setup({
	additional_vim_regex_highlighting = true,
	highlight = { enable = true },
	indent = { enable = true },
	ensure_installed = {
		"css",
		"elixir",
		"html",
		"javascript",
		"json",
		"php",
		"python",
		"scss",
		"tsx",
		"typescript",
		"vue",
		"yaml",
	},
})