local ok, copilot = pcall(require, "copilot")
if not ok then
   return
end

copilot.setup({
   suggestion = {
      enabled = true,
      auto_trigger = true, -- Ativar sugestões automáticas
      keymap = {
         accept = "<C-l>",
         next = "<C-]>",
         prev = "<C-[>",
         dismiss = "<C-d>",
      },
   },
   panel = {
      enabled = true, -- Habilitar o painel de sugestões
   },
   experimental = {
      ghost_text = true, -- Ativar o ghost text (texto que aparece em linha com sugestões)
   },
})
