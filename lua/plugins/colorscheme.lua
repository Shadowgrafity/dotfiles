local M = {
    "Mofiqul/dracula.nvim",
    priority = 1000,
    config = function()
        vim.cmd.colorscheme "dracula"
    end,
}

return { M }
