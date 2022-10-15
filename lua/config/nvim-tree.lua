local tree_cb = require("nvim-tree.config").nvim_tree_callback
local g = require("g")

local COLS = vim.o.columns
local ROWS = vim.o.lines

local float_window_width = math.floor(COLS / 2)
local float_window_height = math.floor(ROWS / 1.5)

require("nvim-tree").setup({
	system_open = {},
	update_focused_file = {
		enable = false,
		update_cwd = false,
		ignore_list = { "*.pyc" },
	},
	view = {
		side = "right",
		width = 50,
		number = true,
		relativenumber = true,
		hide_root_folder = false,
		mappings = {
			list = {
				{ key = "s", cb = tree_cb("vsplit") },
				{ key = "v", cb = tree_cb("split") },
				{ key = "<C-S>", cb = tree_cb("system_open") },
				{ key = "<ESC>", cb = tree_cb("close") },
			},
		},
		float = {
			enable = true,
			open_win_config = {
				relative = "editor",
				border = "rounded",
				width = float_window_width,
				height = float_window_height,
				row = math.floor(((ROWS - float_window_height) / 2) - 1),
				col = math.floor((COLS - float_window_width) / 2),
			},
		},
	},
})

vim.g.nvim_tree_indent_markers = 1

g.n_silent_map("<leader>pv", ":NvimTreeToggle<CR>")
g.n_silent_map("<leader>R", ":NvimTreeRefresh<CR>")
g.n_silent_map("<leader>pp", ":NvimTreeFindFile<CR>")
