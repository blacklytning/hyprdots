return {
    {
        "nvimtools/none-ls.nvim",
        dependencies = {
            "nvimtools/none-ls-extras.nvim",
        },

        config = function()
            local null_ls = require("null-ls")

            null_ls.setup({
                sources = {
                    null_ls.builtins.formatting.stylua,
                    null_ls.builtins.formatting.black,
                    null_ls.builtins.formatting.isort,
                    null_ls.builtins.formatting.prettierd.with({
                        extra_args = { "--tab-width", "4" },
                    }),

                    require("none-ls.diagnostics.eslint_d"), -- diagnostics
                    -- require("none-ls.code_actions.eslint_d"),  -- (optional) quick‑fixes
                    -- require("none-ls.formatting.eslint_d"),    -- (optional) formatting

                    null_ls.builtins.completion.spell,
                },
            })

            vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
        end,
    },
}
