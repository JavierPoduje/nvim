require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "catppuccin", -- gruvbox-material
		component_separators = "",
		section_separators = "",
		always_divide_middle = true,
		globalstatus = true,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = { "filename" },
		lualine_x = { "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	extensions = { "nvim-tree" },
})
