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

Plug('ellisonleao/gruvbox.nvim') -- theme

Plug('lukas-reineke/indent-blankline.nvim') -- indentation lines

Plug(
    'nvim-treesitter/nvim-treesitter',
    {
        ['do'] = ':TSUpdate'
    }
)

Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
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

Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/nvim-cmp')

Plug('stevearc/oil.nvim')

vim.call('plug#end')
