
-- Claude (ChatGPT.nvim) keymaps

vim.keymap.set("n", "<leader>cc", "<cmd>ChatGPT<CR>", {
  desc = "Claude Chat",
})

vim.keymap.set("v", "<leader>ce", "<cmd>ChatGPTEditWithInstructions<CR>", {
  desc = "Claude Edit Selection",
})

vim.keymap.set("v", "<leader>cr", "<cmd>ChatGPTRun rewrite<CR>", {
  desc = "Claude Rewrite",
})
