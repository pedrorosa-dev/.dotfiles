lvim.plugins = {
  { "lunarvim/colorschemes" },
  { "jose-elias-alvarez/typescript.nvim" },
  { "mattn/emmet-vim" },
  { "AndrewRadev/tagalong.vim" },
  { "alvan/vim-closetag" },
  { "windwp/nvim-ts-autotag" },
  { "andweeb/presence.nvim" },
  { "MunifTanjim/prettier.nvim" },
  { "MunifTanjim/eslint.nvim" },
  { "Mohammed-Taher/AdvancedNewFile.nvim" },
  { "folke/zen-mode.nvim" },
  { "filipdutescu/renamer.nvim" },
  { "VonHeikemen/fine-cmdline.nvim" },
  { "MunifTanjim/nui.nvim" },
  { "folke/twilight.nvim" },
  { "ThePrimeagen/harpoon" },
  { "folke/trouble.nvim" },
  {
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
      require('treesitter-context').setup {
        enable = false,
      }
    end
  },
  {
    "okuuva/auto-save.nvim",
    cmd = "ASToggle",                         -- optional for lazy loading on command
    event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
    opts = {
      -- your config goes here
      -- or just leave it empty :)
    },
  },

  --------------------------------------------
  --- *=================*
  --- | PLUGINS DE DEBUG |
  --- *=================*
  --
  { "mfussenegger/nvim-dap" },
  { "jay-babu/mason-nvim-dap.nvim" },
  { "metakirby5/codi.vim" },

  --------------------------------------------
  --- *=================*
  --- | PLUGINS DE IA |
  --- *=================*
  --
  -- { 'ExaFunction/codeium.vim' },
  { "AndreM222/copilot-lualine" },
  --------------------------------------------
  -- *=================*
  -- | PLUGINS DE TEMA |
  -- *=================*
  --
  { "AlexvZyl/nordic.nvim" },
  { "luisiacc/gruvbox-baby" },
  { "ellisonleao/gruvbox.nvim" },
  { "scottmckendry/cyberdream.nvim" },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "loctvl842/monokai-pro.nvim" },
  { "gmr458/vscode_modern_theme.nvim" },
  { "savq/melange-nvim" },
  { "aktersnurra/no-clown-fiesta.nvim" },
  { "Mofiqul/dracula.nvim" },
  { "datsfilipe/min-theme.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "tomasr/molokai" },
  { "bluz71/vim-moonfly-colors" },
  { "tiagovla/tokyodark.nvim" },
  { "mellow-theme/mellow.nvim" },
  { "Yazeed1s/minimal.nvim" },
  { "sekke276/dark_flat.nvim" },
  { "nyngwang/nvimgelion" },
  { "Yazeed1s/oh-lucy.nvim" },
  ---------------------------------------
  --
  --
  { "nvim-lua/plenary.nvim" },
  { "nvim-lualine/lualine.nvim" },
  { "sindrets/diffview.nvim" },
  { "neovim/nvim-lspconfig" },
  { "jose-elias-alvarez/null-ls.nvim" },
  { "nvim-tree/nvim-web-devicons" },
  { "brenoprata10/nvim-highlight-colors" },
  { "akinsho/bufferline.nvim" },
  { "catppuccin/nvim" },
  { "iamcco/markdown-preview.nvim" },
  { "folke/noice.nvim" },
  { 'rcarriga/nvim-notify' },
  { "nvim-telescope/telescope.nvim" },
  { "mg979/vim-visual-multi" },
  { "tpope/vim-commentary" },
  { "norcalli/nvim-colorizer.lua" },
  {
    "folke/todo-comments.nvim", --TODO --FIXME --NOTE
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
  },
  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  },
  -- {
  --   "NeogitOrg/neogit",

  --   dependencies = {
  --     "nvim-lua/plenary.nvim",         -- required
  --     "sindrets/diffview.nvim",        -- optional - Diff integration
  --     -- Only one of these is needed, not both.
  --     "nvim-telescope/telescope.nvim", -- optional
  --   },
  --   config = true,
  -- },
  {
    "mfussenegger/nvim-lint",
    event = {
      "BufReadPre",
      "BufNewFile",
    },
    config = function()
      local lint = require("lint")

      lint.linters_by_ft = {
        javascript = { "eslint" },
        typescript = { "eslint" },
        javascriptreact = { "eslint" },
        typescriptreact = { "eslint" },
        python = { "pylint" },
        ruby = { "rubocop" },
        markdown = { "alex" },
        php = { "php" },
      }
      local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

      -- Função para verificar se o linter está disponível
      local function linter_exists(linter)
        return vim.fn.executable(linter) == 1
            or vim.fn.filereadable(vim.fn.getcwd() .. "/node_modules/.bin/" .. linter) == 1
      end

      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
        group = lint_augroup,
        callback = function()
          local ft = vim.bo.filetype
          local linters = lint.linters_by_ft[ft]

          if linters then
            for _, linter in ipairs(linters) do
              if linter_exists(linter) then
                lint.try_lint()
                break
              end
            end
          end
        end,
      })

      vim.keymap.set("n", "<leader>L", function()
        local ft = vim.bo.filetype
        local linters = lint.linters_by_ft[ft]

        if linters then
          for _, linter in ipairs(linters) do
            if linter_exists(linter) then
              lint.try_lint()
              break
            end
          end
        end
      end, { desc = "Trigger linting for current file" })
    end,
  },
  {
    "stevearc/conform.nvim",
    event = {
      "BufReadPre",
      "BufNewFile",
    },
    config = function()
      local conform = require("conform")

      conform.setup({
        formatters_by_ft = {
          javascript = { "prettier", "biome" },
          typescript = { "prettier", "biome" },
          html = { "prettier" },
          css = { "prettier" },
          javascriptreact = { "prettier", "biome" },
          typescriptreact = { "prettier", "biome" },
          python = { "isort", "autopep8" },
          ruby = { "rubocop" },
          lua = { "stylua" },
          php = { "php_cs_fixer", }, --[[ "phpcbf" ]]
        },
        format_on_save = {
          lsp_fallback = true,
          async = false,
          timeout_ms = 500,
        },
      })
      vim.keymap.set({ "n", "v" }, "<leader>mp", function()
        conform.format({
          lsp_fallback = true,
          async = false,
          timeout_ms = 500,
        })
      end, { desc = "Format current file" })
    end,
  },
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
      { "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
      { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
      { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
    },
  }
}
