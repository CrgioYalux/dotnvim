local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('lervag/vimtex')
Plug('iamcco/markdown-preview.nvim', { ['do'] = 'cd app && npx --yes yarn install' })
Plug('ellisonleao/gruvbox.nvim') -- theme
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate'})

vim.call('plug#end')
