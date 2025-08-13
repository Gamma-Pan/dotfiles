local keyset = vim.keymap.set

-- global clipboard
keyset("v", "<Leader>y", '"+y', { desc = "Yank to system clipboard" })
keyset("n", "<Leader>p", '"+p', { desc = "Put to system clipboard" })

-- telescope
local builtin = require("telescope.builtin")
local ignore_patterns = {"_md_ltex%.json$"} -- obsidian generated files
keyset("n", "<leader>ff", function() builtin.find_files({file_ignore_patterns = ignore_patterns}) end, { desc = "Fuzzy [f]ind [f]iles in cwd" })
keyset("n", "<leader>fs", builtin.live_grep, { desc = "Fuzzy [f]ind [s]trings in files" })
keyset("n", "<leader>fb", builtin.buffers, { desc = "Fuzzy [f]ind [b]uffers" })
keyset("n", "<leader>fd", function()
	builtin.diagnostics({ bufnr = 0 })
end, { desc = "Fuzzy [f]ind [d]iagnostics in current buffer" })

-- Remap for dealing with word wrap
keyset("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keyset("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- buffer
keyset("n", "<leader>bn", ":bn<CR>", { desc = "[b]uffer [n]ext" })
keyset("n", "<leader>bp", ":bn<CR>", { desc = "[b]uffer [p]revious" })

-- clear search
keyset("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- lsp
-- FOR SPECIFIC MAPPINGS PER LANGUAGE
-- SERVER CHECK on_attach FUNCTION IN lsp.lua
keyset("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
keyset("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "signature_help" })

---keyset("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
keyset("n", "gd", "<c-]>", { desc = "Go to definition" })
keyset("n", "<a-cr>", vim.lsp.buf.code_action, {})

keyset("n", "<leader>rf", vim.lsp.buf.format, { desc = "Format buffer" })
keyset("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })

-- diagnostics
keyset("n", "<leader>d", vim.diagnostic.open_float, { desc = "[d]iagnostics" })
keyset("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
keyset("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to next diagnostic" })

-- write file
keyset("n", "<leader>w", "<cmd>write<cr>", { desc = "Write buffer" })

-- Lazy
keyset("n", "<leader>Z", "<cmd>Lazy<cr>", { desc = "Open Lazy" })
