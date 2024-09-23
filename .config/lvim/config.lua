reload('user.plugins')
reload('user.dashboard')
reload('user.keybinds')
reload('user.which_keys')
reload('user.colorscheme')
reload('user.lualine')
reload('user.copilot')
reload('user.codeium')
reload('user.prettier')
reload('user.discord')
reload('user.notify')
reload('user.renamer')
reload('user.telescope_browser')
reload('user.harpoon')
reload('user.neotest')
reload('user.obsidian')
reload('user.dap')
require("mason-nvim-dap").setup()
require('avante_lib').load()

vim.opt.clipboard = "unnamedplus"
-- lvim.format_on_save.enabled = true
lvim.transparent_window = false

vim.opt.shiftwidth = 3   -- Tamanho do indent (equivale ao tamanho do tab)
vim.opt.tabstop = 3      -- Número de espaços que um tab representa
vim.opt.expandtab = true -- Converter tabs para espaços

-- -- Abre o Telescope find_files automaticamente ao iniciar o lvim e fecha o oil.nvim se estiver aberto
-- local function open_telescope_on_startup()
--    -- Fecha o oil.nvim se estiver aberto
--    if vim.bo.filetype == "oil" then
--       vim.cmd("bd!") -- Fecha o buffer do oil.nvim
--    end

--    -- Abre o Telescope find_files
--    require("telescope.builtin").find_files()
-- end

-- -- Registra o comando para ser executado ao iniciar o lvim
-- vim.api.nvim_create_autocmd("VimEnter", {
--    callback = open_telescope_on_startup,
-- })
