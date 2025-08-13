return {
	{
		"nvim-treesitter/nvim-treesitter-context",
		opts={},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",

		dependencies = {
			"nvim-treesitter/nvim-treesitter-refactor",
		},

		config = function()
			require("nvim-treesitter.configs").setup({
				refactor = {
					highlight_definitions = { enable = true },
					clear_on_cursor_move = true,
				},
				auto_install = true,
				ensure_installed = { "markdown", "markdown_inline", "latex", "typescript" },
				highlight = {
					enable = true,
					--additional_vim_regex_highlighting = { "markdown" },
				},
				indent = { enable = false },
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<a-w>",
						node_incremental = "<a-w>",
						-- scope_incremental = "grc",
						node_decremental = "<a-W>",
					},
				},
			})
		end,
	},
}
