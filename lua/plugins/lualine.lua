return {
    "nvim-lualine/lualine.nvim",
    config = function()
      require('lualine').setup({
        options = {
          theme = 'dracula'
      },
        sections = {
            lualine_b = {
                {
                    "branch",
                },
            },
            lualine_c = {
                {
                    "lsp_status",
                },
                {
                    "filename",
                },
            },
            lualine_x = {
                {
                    'diagnostics',
                    symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
                    separator = '',
                },
                {
                    'diff',
                    symbols = {
                    added = ' ',
                    modified = ' ',
                    removed = ' ',
                    },
                    separator = '',
              },
            },
        },
    })
  end
}  
