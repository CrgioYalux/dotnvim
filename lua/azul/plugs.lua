local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('lervag/vimtex')

Plug(
    'iamcco/markdown-preview.nvim',
    {
        ['do'] = 'cd app && npx --yes yarn install'
    }
)

-- Themes
Plug('ellisonleao/gruvbox.nvim')
-- Plug('eldritch-theme/eldritch.nvim')
-- Plug 'fcancelinha/nordern.nvim'
-- Plug 'xero/miasma.nvim'
-- Plug 'diegoulloao/neofusion.nvim'

Plug('lukas-reineke/indent-blankline.nvim') -- indentation lines

Plug(
    'nvim-treesitter/nvim-treesitter',
    {
        ['do'] = ':TSUpdate'
    }
)

Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')

-- Completion and snippets
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('saadparwaiz1/cmp_luasnip')
Plug('L3MON4D3/LuaSnip')
Plug('neovim/nvim-lspconfig')

Plug('nvim-lua/plenary.nvim')
Plug(
    'nvim-telescope/telescope-fzf-native.nvim',
    {
        ['do'] = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
    }
)
Plug(
    'nvim-telescope/telescope.nvim',
    {
        ['tag'] = '0.1.6'
    }
)

Plug('stevearc/oil.nvim')

Plug('sbdchd/neoformat') -- prettier

vim.call('plug#end')
