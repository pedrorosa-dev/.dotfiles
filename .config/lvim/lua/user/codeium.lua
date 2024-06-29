local ok, codeium = pcall(require, "codeium")
if not ok then
  return
end

codeium.setup({
  suggestion = {
    keymap = {
      accept = "<C-l>",
      next = "<C-]>",
      prev = "<C-[>",
      dismiss = "<C-d>",
    },
    auto_trigger = true, -- Ativar sugestões automáticas
  },
  experimental = {
    ghost_text = true,
  },
})
