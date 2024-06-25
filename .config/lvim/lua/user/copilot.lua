local ok, copilot = pcall(require, "copilot")
if not ok then
  return
end

copilot.setup({
  suggestion = {
    keymap = {
      accept = "<c-l>",
      next = "<A-j>",
      prev = "<A-k>",
      dismiss = "<c-h>",
    },
    auto_trigger = true, -- Ativar sugestões automáticas
  },
  {
    experimental = {
      ghost_text = true,
    },
  },
})
