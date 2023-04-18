local g = require("g")

local COLS = vim.o.columns
local ROWS = vim.o.lines

local float_window_width = math.floor(COLS / 2)
local float_window_height = math.floor(ROWS / 1.5)

local function opts(desc, bufnr)
	return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
end

require("nvim-tree").setup({
	system_open = {},
	update_focused_file = {
		enable = false,
		update_cwd = false,
		ignore_list = { "*.pyc" },
	},
	on_attach = function(bufnr)
		local api = require("nvim-tree.api")
		vim.keymap.set("n", "s", api.node.open.vertical, opts("Open: Vertical Split", bufnr))
		vim.keymap.set("n", "v", api.node.open.vertical, opts("Open: Horizontal Split", bufnr))
		vim.keymap.set("n", "<CR>", api.node.open.edit, opts("Open", bufnr))
		vim.keymap.set("n", "<ESC>", api.tree.close, opts("Close", bufnr))
		vim.keymap.set("n", "g?", api.tree.toggle_help, opts("Help", bufnr))
		vim.keymap.set("n", "gy", api.fs.copy.absolute_path, opts("Copy Absolute Path", bufnr))
		vim.keymap.set("n", "P", api.node.navigate.parent, opts("Parent Directory", bufnr))
		vim.keymap.set("n", "Y", api.fs.copy.relative_path, opts("Copy Relative Path", bufnr))
	end,
	view = {
		side = "right",
		width = 50,
		number = true,
		relativenumber = true,
		hide_root_folder = false,
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
g.n_silent_map("<leader>pp", ":NvimTreeFindFileToggle<CR>")
