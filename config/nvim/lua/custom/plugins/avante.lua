return {
  "yetone/avante.nvim",
  build = "make",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    provider = "claude",

    providers = {
      claude = {
        model = "claude-sonnet-4-5",
      },
    },
  },
  keys = {
	{ "<leader>aa", "<cmd>AvanteAsk<cr>", desc = "Claude Ask" },
	{ "<leader>ae", "<cmd>AvanteEdit<cr>", desc = "Claude Edit", mode = "x" },
	{ "<leader>af", "<cmd>AvanteFix<cr>", desc = "Claude Fix" },
	{ "<leader>ad", "<cmd>AvanteDoc<cr>", desc = "Claude Doc" },
	{ "<leader>at", "<cmd>AvanteTest<cr>", desc = "Claude Test" },
  },
}
