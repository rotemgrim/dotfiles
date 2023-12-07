-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lspconfig").cssls.setup({
    settings = {
        css = {
            validate = true,
        },
        less = {
            validate = true,
        },
        scss = {
            validate = true,
        },
    },
    filetypes = {
        "html",
        "css",
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
    },
})
