return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({ no_underline = true })
			-- this probably cannot be done with opts
			vim.cmd([[colorscheme catppuccin]])
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = { theme = "catppuccin", lualine_c = { "filename", path = 1 } },
	},
	{
		"bullets-vim/bullets.vim",
		config = function()
			vim.cmd([[let g:bullets_set_mappings = 0]])
			vim.cmd([[let g:bullets_renumber_on_change = 0]])
			vim.cmd([==[let g:bullets_outline_levels = ['std-']]==])
			vim.cmd([[let g:bullets_delete_last_bullet_if_empty = 0]])
			vim.cmd([[let g:bullets_line_spacing = 1]])
		end,
	},
	{
		"goolord/alpha-nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local startify = require("alpha.themes.startify")
			-- available: devicons, mini, default is mini
			-- if provider not loaded and enabled is true, it will try to use another provider
			startify.file_icons.provider = "devicons"
			require("alpha").setup(startify.config)
		end,
	},
	{
		"brenoprata10/nvim-highlight-colors",
		opts = { render = "foreground" },
	},
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup({})
		end,
	},
}
