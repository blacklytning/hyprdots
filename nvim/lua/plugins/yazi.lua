return {
    ---@type LazySpec
    {
        "mikavilpas/yazi.nvim",
        event = "VeryLazy",
        dependencies = {
            "folke/snacks.nvim",
        },
        keys = {
            {
                "<C-n>",
                "<cmd>Yazi cwd<cr>",
                desc = "Open the file manager in nvim's working directory",
            },
        },
        ---@type YaziConfig | {}
        opts = {
            open_for_directories = false,
            keymaps = {
                show_help = "<f1>",
            },
        },
        init = function()
            vim.g.loaded_netrwPlugin = 1
        end,
    },
}
