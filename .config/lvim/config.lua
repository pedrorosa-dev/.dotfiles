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
reload('user.incline')
require("mason-nvim-dap").setup()
require('avante_lib').load()
vim.opt.clipboard = "unnamedplus"
-- lvim.format_on_save.enabled = true
vim.opt.shiftwidth = 3   -- Tamanho do indent (equivale ao tamanho do tab)
vim.opt.tabstop = 3      -- Número de espaços que um tab representa
vim.opt.expandtab = true -- Converter tabs para espaços

-- Configuração para abrir o Telescope File Browser ao iniciar no diretório
vim.api.nvim_create_autocmd("VimEnter", {
   callback = function()
      local args = vim.fn.argv()
      if #args == 1 and vim.fn.isdirectory(args[1]) == 1 then
         require('telescope.builtin').find_files({ cwd = args[1] })
      end
   end,
})

lvim.builtin.bufferline.active = false
lvim.builtin.breadcrumbs.active = false
