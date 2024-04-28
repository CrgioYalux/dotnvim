local vim = vim
local remap = vim.keymap

-- Keymaps for better default experience
-- See `:help remap.set()`

remap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
remap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
remap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- To copy and paste from and to the system's clipboard
remap.set('v', '<Space>Y', '"*y', { silent = true })
remap.set('v', '<Space>P', '"+p', { silent = true })
remap.set('v', '<Space>y', '"+y', { silent = true })
remap.set('v', '<Space>p', '"+p', { silent = true })

-- To go to the explorer
remap.set('n', '<Space>rr', ':R<CR>', { silent = true })

-- Telescope
local builtin = require('telescope.builtin')
remap.set('n', '<leader>ff', builtin.find_files, {})
remap.set('n', '<leader>fg', builtin.live_grep, {})
remap.set('n', '<leader><space>', builtin.buffers, {})
remap.set('n', '<leader>fh', builtin.help_tags, {})

-- Diagnostic
remap.set('n', '<leader>e', vim.diagnostic.open_float)
