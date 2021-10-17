local M = require("plugins_settings.galaxyline.definitions")

-- Last Panel (?)
M.insert_right({ Start = M.transparent_border })

M.insert_right({
	LineInfo = {
		provider = "LineColumn",
		separator = "  ",
		separator_highlight = { M.colors.green, M.colors.bg },
		highlight = { M.colors.fg, M.colors.bg },
	},
})

M.insert_right({
	PerCent = {
		provider = "LinePercent",
		separator = "  ",
		separator_highlight = { M.colors.blue, M.colors.bg },
		highlight = { M.colors.blue, M.colors.bg, "bold" },
	},
})

M.insert_blank_line_at_right()

M.insert_right({
	Encode = {
		provider = "FileEncode",
		separator = "  ",
		separator_highlight = { M.colors.blue, M.colors.bg },
		highlight = { M.colors.blue, M.colors.bg, "bold" },
	},
})

M.insert_blank_line_at_right()

M.insert_right({ Separa = M.transparent_border })