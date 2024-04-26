require('mason').setup()
require('mason-lspconfig').setup {
    ensure_installed = { 'clangd', 'cssls', 'tsserver', 'lua_ls', 'tailwindcss', 'svelte' },
    automatic_installation = false,
}

require('lspconfig').clangd.setup {}
require('lspconfig').cssls.setup {}
require('lspconfig').tsserver.setup {}
require('lspconfig').lua_ls.setup {}
require('lspconfig').tailwindcss.setup {}
require('lspconfig').svelte.setup {}
