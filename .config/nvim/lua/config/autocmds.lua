
-- Automatically save the buffer when you leave Insert mode or change text in Normal mode
-- vim.api.nvim_create_autocmd({"TextChanged"}, {
--   pattern = "*",  -- applies to all files; specify filetype if needed, e.g., "*.lua"
--   callback = function()
--     if vim.bo.modified then
--       vim.cmd("write")  -- only writes if the buffer is modified
--     end
--   end,
-- })
