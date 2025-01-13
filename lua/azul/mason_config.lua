require('mason').setup()
local lspconfig = require('lspconfig')
local mason_lspconfig = require('mason-lspconfig')

local vim = vim

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

local servers = {
    clangd = {},
    cssls = {},
    tsserver = {},
    lua_ls = {},
    tailwindcss = {},
    svelte = {},
    marksman = {},
}

local on_attach = function(_, bufnr)
    local nmap = function(keys, func, desc)
        if desc then
            desc = 'LSP: ' .. desc
        end

        vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
    end

    nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
    nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
    nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
    nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')

    vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
        vim.lsp.buf.format()
    end, { desc = 'Format current buffer with LSP ' })
end

mason_lspconfig.setup {
    ensure_installed = { 'marksman', 'clangd', 'cssls', 'tsserver', 'lua_ls', 'tailwindcss', 'svelte' },
    automatic_installation = true,
}

mason_lspconfig.setup_handlers {
    function(server_name)
        lspconfig[server_name].setup {
            capabilities = capabilities,
            settings = servers[server_name],
            on_attach = on_attach
        }
    end
}
