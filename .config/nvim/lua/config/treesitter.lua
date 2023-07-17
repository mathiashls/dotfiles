local ok, treesitter = pcall(require, "nvim-treesitter.configs")

if not ok then
    return
end

treesitter.setup {
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    },
}
