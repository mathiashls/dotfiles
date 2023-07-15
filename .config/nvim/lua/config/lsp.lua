local lsp_installer = require "nvim-lsp-installer"

lsp_installer.on_server_ready(
    function(server)
        local opts = { }
        server:setup(opts)
        vim.cmd([[ do User LspAttach Buffers ]])
    end
)


-- lsp handlers
local border = "rounded"

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
    vim.lsp.handlers.hover, { border = border, }
)

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
    vim.lsp.handlers.signature_help, { border = border, }
)

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = false }
)

vim.diagnostic.config(
    {
        virtual_text = false,
        underline = false,
        update_in_insert = true,
        float = {
            source = "always",
            border = "rounded",
        },
    }
)

require'lspsaga'.init_lsp_saga {
    error_sign = '!',
    warn_sign = '^',
    hint_sign = '?',
    infor_sign = '~',
    border_style = "round",
    code_action_prompt = {
        enable = false
    }
}
