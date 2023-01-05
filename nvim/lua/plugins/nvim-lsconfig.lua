
return {
    "neovim/nvim-lspconfig",
    config = function()
        local on_attach_func = function(client, bufnr)
            vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
        end

        require("lspconfig").clangd.setup{
            clangd_keymaps, -- Defined in keymaps file.
            on_attach = on_attach_func
        }

	require('lspconfig')['rust_analyzer'].setup{
             on_attach = on_attach_func,
             flags = lsp_flags,
             -- Server-specific settings...
             settings = {
             ["rust-analyzer"] = {}
    }
 }
        require('lspconfig')['pyright'].setup{
            on_attach = on_attach_func,
            flags = lsp_flags,
}
        require('lspconfig')['tsserver'].setup{
            on_attach = on_attach_func,
            flags = lsp_flags,
}
    end
}

