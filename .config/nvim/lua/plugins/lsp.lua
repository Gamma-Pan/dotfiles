return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local builtin = require("telescope.builtin")
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.ltex.setup({
				capabilities = capabilities,
			})
			lspconfig.pyright.setup({
				capabilities = capabilities,
			})
			lspconfig.svelte.setup({
				capabilities = capabilities,
				on_attach = function(client, bufnr)
					vim.keymap.set("n", "<leader>fr", builtin.lsp_references, { desc = "Symbol references" })
				end,
			})
		end,
	},

	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"icewind/ltex-client.nvim",
		event = { "BufReadPre", "BufNewFile" },
		opts = {},
	},
	{},
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua.with({
						extra_args = { "--indent-type", "Tabs", "--indent-width", "4" },
					}),
					null_ls.builtins.formatting.black,
					null_ls.builtins.formatting.prettier.with({
						extra_args = { "--tab-width", "4", "--use-tabs" },
					}),
				},
			})
		end,
	},
	{
		"ray-x/lsp_signature.nvim",
		event = "InsertEnter",
		opts = {
			bind = true,
			handler_opts = { border = "single" },
		},
		config = function(_, opts)
			require("lsp_signature").setup(opts)
		end,
	},
}
