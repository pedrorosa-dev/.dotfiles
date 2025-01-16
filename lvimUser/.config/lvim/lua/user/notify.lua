vim.notify = require("notify")
require("notify").setup({
  background_colour = "#000000",
  timeout = 50,
})


-- vim.notify = require("notify")

-- local function bem_vindo()
--     vim.notify("Hello, Pedro Rosa", "info", { --info
--         title = "Welcome!",
--         timeout = 500,  -- tempo em milissegundos
--         on_open = function()
--         end,
--         on_close = function()
--         end,
--     })
-- end

-- -- Executa a função de boas-vindas ao iniciar o Neovim
-- vim.api.nvim_create_autocmd("VimEnter", {
--     callback = bem_vindo
-- })
