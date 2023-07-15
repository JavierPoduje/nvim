-- Source plugins confugurations

require("config.autopair")
require("config.bufferline")
require("config.buffero")
require("config.bujo")
require("config.colorizer")
require("config.emmet")
require("config.formatter")
require("config.fzf")
require("config.git")
require("config.harpoon")
require("config.lazygit")
require("config.lspconfig")
require("config.lualine")
require("config.mason")
require("config.nerd-commenter")
require("config.null-ls")
require("config.nvim-cmp")
require("config.nvim-tree")
require("config.startify")
require("config.taboo")
require("config.telescope")
require("config.treesitter")
require("config.ultisnips")
require("config.vim-gitgutter")

-- Deactive GitGutter commands to avoid slow <leader>+h execution
vim.g.gitgutter_map_keys = 0
