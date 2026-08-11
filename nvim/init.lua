vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.ignorecase = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.pack.add({
    "https://github.com/EdenEast/nightfox.nvim",
    "https://github.com/nvim-tree/nvim-web-devicons",
    "https://github.com/nvim-lualine/lualine.nvim",
})

vim.cmd.colorscheme("carbonfox")

require("lualine").setup()
