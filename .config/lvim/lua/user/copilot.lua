local ok, copilot = pcall(require, "copilot")
if not ok then
  return
end

copilot.setup({
  suggestion = {
    keymap = {
      accept = "<C-l>",
      next = "<C-j>",
      prev = "<C-k>",
      dismiss = "<C-h>",
    },
    auto_trigger = true, -- Ativar sugestões automáticas
  },
  {
    experimental = {
      ghost_text = true,
    },
  },
})
