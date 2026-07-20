return {
    'stevearc/conform.nvim',
    opts = {},
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                lua = { "stylua" },
                go = { "gofmt" },
                rust = { "rustfmt", lsp_format = "fallback" },
                python = { "yapf" },
                dart = { "dart_format" },
                zig = { "zigfmt" },
            },
            formatters = {
              yapf = {
                -- Force yapf to use the Google style guide if no local config is found
                prepend_args = { "--style", "google" },
              },
            },
        })
    end
}

