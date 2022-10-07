local g = require("g")

require("harpoon").setup({
	global_settings = {
		save_on_toggle = false,
		save_on_change = true,
		enter_on_sendcmd = false,
		excluded_filetypes = { "harpoon" },
	},
})

-- add file
g.n_silent_map("<Leader>ya", ":lua require('harpoon.mark').add_file()<CR>")
g.n_silent_map("<Leader>yn", ":lua require('harpoon.ui').nav_next()<CR>")
g.n_silent_map("<Leader>yp", ":lua require('harpoon.ui').nav_prev()<CR>")

-- toggle ui
g.n_silent_map("<Leader>yt", ":lua require('harpoon.ui').toggle_quick_menu()<CR>")

-- navigate
for char, num in pairs(g.left_num_by_char) do
	g.n_silent_map("<Leader>y" .. char, ":lua require('harpoon.ui').nav_file(" .. tostring(num) .. ")<CR>")
end
