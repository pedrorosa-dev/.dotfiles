local ok, copilot = pcall(require, "copilot")
if not ok then
  return
end

copilot.setup({
  suggestion = {
    keymap = {
      accept = "<C-l>",
      next = "<C-]>",
      prev = "<C-[>",
      dismiss = "<C-d>",
    },
    auto_trigger = true, -- Ativar sugestões automáticas
  },
  {
    experimental = {
      ghost_text = true,
    },
  },
})
