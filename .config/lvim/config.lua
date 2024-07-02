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
require("mason-nvim-dap").setup()

vim.opt.clipboard = "unnamedplus"
-- lvim.format_on_save.enabled = true
lvim.transparent_window = false
