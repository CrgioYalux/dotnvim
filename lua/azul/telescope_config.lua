-- require('telescope').setup {
--    defaults = { file_ignore_patterns = { "node_modules" } }
-- }

pcall(require('telescope').load_extension, 'fzf')
