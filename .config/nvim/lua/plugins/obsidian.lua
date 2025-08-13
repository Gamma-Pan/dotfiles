return {
	{
		"epwalsh/obsidian.nvim",
		version = "*", -- recommended, use latest release instead of latest commit
		lazy = true,
		ft = "markdown",
		dependencies = {
			-- Required.
			"nvim-lua/plenary.nvim",
			-- For completion
			"hrsh7th/nvim-cmp",
		},
		completions = {
			min_chars = 2,
		},
		opts = {
			open_app_foreground = true,
			workspaces = {
				{
					name = "My Notes v2",
					path = "/home/pan/My Notes/My Notes v2",
				},
			},
			ui = {
				enable = true,
				checkboxes = {},
			},
			note_id_func = function(title)
				return title
			end,
			disable_frontmatter = false,
			templates = {
				folder = "Extras/Templates",
			},
		},
	},
	{
		"oflisback/obsidian-bridge.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		config = function()
			require("obsidian-bridge").setup({ scroll_sync = true })
			-- vim.keymap.set("n", "<leader>o", ':ObsidianBridgeTelescopeCommand<CR>', {})
		end,
		event = {
			"BufReadPre *.md",
			"BufNewFile *.md",
		},
		lazy = true,
	},
}
