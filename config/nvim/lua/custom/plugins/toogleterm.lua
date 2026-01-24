
return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<C-\>]], -- Ctrl+\
      direction = "float",      -- float | horizontal | vertical | tab
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
      persist_size = true,
      close_on_exit = true,
      shade_terminals = true,
      float_opts = {
        border = "rounded",
        winblend = 0,
      },
    })

    -- ESC to exit terminal input mode quickly
    vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Terminal: normal mode" })

    -- Optional: use Ctrl+h/j/k/l to move between splits even from terminal
    vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]], { desc = "Move left" })
    vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]], { desc = "Move down" })
    vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]], { desc = "Move up" })
    vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]], { desc = "Move right" })

    -- Handy commands
    vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "Terminal: float" })
    vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "Terminal: horizontal" })
    vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", { desc = "Terminal: vertical" })
  end,
}
