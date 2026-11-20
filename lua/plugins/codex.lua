return {
  "YeeZC/codex.nvim",
  main = "codex",
  cmd = { "Codex", "CodexOpen", "CodexFocus", "CodexClose", "CodexSend", "CodexAdd", "CodexTreeAdd" },
  opts = {
    default_args = { "--yolo" },
  },
  keys = {
    { "<leader>ac", "<cmd>Codex<cr>", desc = "Toggle Codex" },
    { "<leader>af", "<cmd>CodexFocus<cr>", desc = "Focus Codex" },
    { "<leader>as", "<cmd>CodexSend<cr>", mode = "x", desc = "Send selection to Codex" },
    { "<leader>ab", "<cmd>CodexAdd<cr>", desc = "Add current file to Codex" },
  },
}
