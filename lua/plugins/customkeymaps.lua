-- created by chatgpt
-- calls custom made function under utils folder
return {
  {
    -- You don't need a plugin here, just setting a keymap on startup
    "nvim-lua/plenary.nvim", -- A harmless placeholder dependency
    lazy = false,
    config = function()
      vim.keymap.set('n', '<leader>t', function()
        require("utils.toggleterm").toggle_terminal()
      end, { noremap = true, silent = true, desc = "Toggle terminal" })
      vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")
    end,
  }
}
