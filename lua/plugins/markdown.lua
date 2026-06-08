local M = {
    "tadmccorkle/markdown.nvim",
    ft = "markdown", -- or 'event = "VeryLazy"'
    config = function ()
        require("markdown").setup({})
    end,
    opts = {
    -- configuration here or empty for defaults
  },
}

return { M }
