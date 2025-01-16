lvim.plugins = {
   { "lunarvim/colorschemes" },
   { "jose-elias-alvarez/typescript.nvim" },
   { "mattn/emmet-vim" },
   { "AndrewRadev/tagalong.vim" },
   { "alvan/vim-closetag" },
   { "windwp/nvim-ts-autotag" },
   { "andweeb/presence.nvim" },
   { "b0o/schemastore.nvim" },
   { "andymass/vim-matchup" },
   -- { "MunifTanjim/prettier.nvim" },
   -- { "MunifTanjim/eslint.nvim" },
   { "Mohammed-Taher/AdvancedNewFile.nvim" },
   { "folke/zen-mode.nvim" },
   { "filipdutescu/renamer.nvim" },
   { "VonHeikemen/fine-cmdline.nvim" },
   { "MunifTanjim/nui.nvim" },
   { "folke/twilight.nvim" },
   { "ThePrimeagen/harpoon" },
   { "szw/vim-maximizer" },
   { "akinsho/git-conflict.nvim" },
   {
      'b0o/incline.nvim',
      config = function()
         require('incline').setup()
      end,
      -- Optional: Lazy load Incline
      event = 'VeryLazy',
   },
   { "stevearc/dressing.nvim" },
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
      "christoomey/vim-tmux-navigator",
      cmd = {
         "TmuxNavigateLeft",
         "TmuxNavigateDown",
         "TmuxNavigateUp",
         "TmuxNavigateRight",
         "TmuxNavigatePrevious",
      },
      keys = {
         { "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
         { "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
         { "<c-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
         { "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
         { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
      },
   },
   {
      'j-hui/fidget.nvim',
      tag = 'legacy', -- Usar essa tag é recomendado, já que versões futuras podem mudar a API
      config = function()
         require('fidget').setup {
            text = {
               spinner = "dots", -- O estilo do spinner (há várias opções, como "dots", "line", etc.)
            },
            window = {
               relative = "win",   -- Onde a janela de status será posicionada
               blend = 0,          -- Transparência da janela
               border = "rounded", -- Estilo da borda da janela
            },
         }
      end,
   },
   ---@type LazySpec
   {
      "mikavilpas/yazi.nvim",
      event = "VeryLazy",
      ---@type YaziConfig
      opts = {
         -- if you want to open yazi instead of netrw, see below for more info
         open_for_directories = false,
         keymaps = {
            show_help = '<f1>',
         },
         -- including 'none', 'rounded', 'single', 'double', 'shadow', etc. For
         yazi_floating_window_border = 'rounded',
      },
   },
   {
      "kdheepak/lazygit.nvim",
      cmd = {
         "LazyGit",
         "LazyGitConfig",
         "LazyGitCurrentFile",
         "LazyGitFilter",
         "LazyGitFilterCurrentFile",
      },
      -- optional for floating window border decoration
      dependencies = {
         "nvim-lua/plenary.nvim",
      },
      -- setting the keybinding for LazyGit with 'keys' is recommended in
      -- order to load the plugin when the command is run for the first time
      keys = {}
   },
   {
      "okuuva/auto-save.nvim",
      cmd = "ASToggle",                         -- optional for lazy loading on command
      event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
      opts = {
         enabled = false
         -- your config goes here
         -- or just leave it empty :)
      },
   },
   {
      "epwalsh/obsidian.nvim",
      version = "*", -- recommended, use latest release instead of latest commit
      lazy = true,
      ft = "markdown",
      -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
      event = {
         "BufReadPre ~/Projects/obsidian-palacio-mental/*.md",
         "BufNewFile ~/Projects/obsidian-palacio-mental/*.md",
      },
      dependencies = {
         -- Required.
         "nvim-lua/plenary.nvim",

         -- see below for full list of optional dependencies 👇
      },
      opts = {
         workspaces = {
            {
               name = "Pessoal",
               path = "~/Projects/obsidian-palacio-mental",
            },
            {
               name = "work",
               path = "~/Projects/obsidian-palacio-mental",
            },
         },
         ui = {
            enable = false,
         }
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
   { "mfussenegger/nvim-dap-python" },
   { "nvim-neotest/neotest" },
   { "nvim-neotest/neotest-python" },
   { "nvim-neotest/neotest-jest" },

   --------------------------------------------
   --- *=================*
   --- | PLUGINS DE IA |
   --- *=================*
   -- {
   --    "Exafunction/codeium.nvim",
   --    dependencies = {
   --       "nvim-lua/plenary.nvim",
   --       "hrsh7th/nvim-cmp",
   --    },
   --    config = function()
   --       require("codeium").setup({
   --       })
   --    end
   -- },
   -- {
   --    "CopilotC-Nvim/CopilotChat.nvim",
   --    branch = "canary",
   --    dependencies = {
   --       { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
   --       { "nvim-lua/plenary.nvim" },  -- for curl, log wrapper
   --    },
   --    build = "make tiktoken",         -- Only on MacOS or Linux
   --    opts = {
   --       debug = true,                 -- Enable debugging
   --       -- See Configuration section for rest
   --    },
   --    -- See Commands section for default commands if you want to lazy load on them
   -- },

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
   { "AndreM222/copilot-lualine" },
   {
      "yetone/avante.nvim",
      event = "VeryLazy",
      lazy = true,                              -- Opcional: para garantir que ele carregue sempre
      version = false,                          -- Use sempre a versão mais recente
      opts = {
         provider = "copilot",                  -- Define o Copilot como o provedor de IA
         auto_suggestions_provider = "copilot", -- Provedor para sugestões automáticas
         behaviour = {
            auto_suggestions = false,           -- Fase experimental
            auto_set_highlight_group = true,
            auto_set_keymaps = true,
            auto_apply_diff_after_generation = false,
            support_paste_from_clipboard = false,
         },
         mappings = {
            diff = {
               ours = "co",       -- Aceitar nossa versão
               theirs = "ct",     -- Aceitar a versão deles
               all_theirs = "ca", -- Aceitar todas as versões deles
               both = "cb",       -- Aceitar ambas as versões
               cursor = "cc",     -- Aceitar a versão do cursor
               next = "]x",       -- Próximo conflito
               prev = "[x",       -- Conflito anterior
            },
            suggestion = {
               accept = "<M-l>",  -- Aceitar sugestão
               next = "<M-]>",    -- Próxima sugestão
               prev = "<M-[>",    -- Sugestão anterior
               dismiss = "<M-]>", -- Descartar sugestão
            },
            jump = {
               next = "]]", -- Próximo
               prev = "[[", -- Anterior
            },
            submit = {
               normal = "<CR>",  -- Submeter no modo normal
               insert = "<C-s>", -- Submeter no modo de inserção
            },
            sidebar = {
               switch_windows = "<Tab>",           -- Alternar janelas
               reverse_switch_windows = "<S-Tab>", -- Alternar janelas na ordem inversa
            },
         },
         hints = { enabled = true }, -- Ativar dicas
         windows = {
            position = "right",      -- Posição da barra lateral
            wrap = true,             -- Similar ao vim.o.wrap
            width = 32,              -- Largura padrão em % com base na largura disponível
            sidebar_header = {
               align = "center",     -- Alinhamento do título
               rounded = true,       -- Bordas arredondadas
            },
         },
         highlights = {
            diff = {
               current = "DiffText", -- Cor para o texto atual
               incoming = "DiffAdd", -- Cor para o texto novo
            },
         },
         diff = {
            autojump = true,       -- Auto pular para o próximo conflito
            list_opener = "copen", -- Comando para abrir a lista de conflitos
         },
      },
      build = "make", -- Comando para compilar a versão mais recente
      dependencies = {
         "nvim-lua/plenary.nvim",
         "MunifTanjim/nui.nvim",
         "stevearc/dressing.nvim",
         "zbirenbaum/copilot.lua",      -- Adiciona o copilot.lua como dependência
         "nvim-tree/nvim-web-devicons", -- Ícones opcionais
         {
            "HakonHarnes/img-clip.nvim",
            event = "VeryLazy",
            opts = {
               default = {
                  embed_image_as_base64 = false,
                  prompt_for_file_nam   = false,
                  drag_and_drop         = {
                     insert_mode = true,
                  },
                  use_absolute_path     = true,
               },
            },
         },
         {
            "MeanderingProgrammer/render-markdown.nvim",
            opts = {
               file_types = { "markdown", "Avante" },
            },
            ft = { "markdown", "Avante" },
         },
      },
   },

   --------------------------------------------
   -- *=================*
   -- | PLUGINS DE TEMA |
   -- *=================*
   --
   { "AlexvZyl/nordic.nvim" },
   { "projekt0n/github-nvim-theme" },
   { "rose-pine/neovim" },
   {
      "killitar/obscure.nvim",
      lazy = false,
      priority = 1000,
      opts = {}
   },
   { "shaunsingh/nord.nvim" },
   { "luisiacc/gruvbox-baby" },
   { "ellisonleao/gruvbox.nvim" },
   { "scottmckendry/cyberdream.nvim" },
   { "nyoom-engineering/oxocarbon.nvim" },
   { "loctvl842/monokai-pro.nvim" },
   { "gmr458/vscode_modern_theme.nvim" },
   { "savq/melange-nvim" },
   { "frenzyexists/aquarium-vim" },
   { "olivercederborg/poimandres.nvim" },
   { "killitar/obscure.nvim" },
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
            javascript = { "eslint", "biomejs" },
            typescript = { "eslint", "biomejs" },
            javascriptreact = { "eslint", "biomejs" },
            typescriptreact = { "eslint", "biomejs" },
            python = { "pylint" },
            ruby = { "rubocop" },
            markdown = { "alex" },
            php = { "phpcs" },
            codespell = { "codespell", "cspell" },
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
               javascript = { "prettier", "biome", "biome-check" },
               typescript = { "prettier", "biome", "biome-check" },
               html = { "prettier" },
               css = { "prettier" },
               javascriptreact = { "prettier", "biome", "biome-check" },
               typescriptreact = { "prettier", "biome", "biome-check" },
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
   -- {
   --    'stevearc/oil.nvim',
   --    opts = {
   --       view_options = {
   --          -- Show files and directories that start with "."
   --          show_hidden = false,
   --          -- This function defines what is considered a "hidden" file
   --          is_hidden_file = function(name, bufnr)
   --             return vim.startswith(name, ".")
   --          end,
   --          -- This function defines what will never be shown, even when `show_hidden` is set
   --          is_always_hidden = function(name, bufnr)
   --             return false
   --          end,
   --          -- Sort file names in a more intuitive order for humans. Is less performant,
   --          -- so you may want to set to false if you work with large directories.
   --          natural_order = true,
   --          -- Sort file and directory names case insensitive
   --          case_insensitive = false,
   --          sort = {
   --             -- sort order can be "asc" or "desc"
   --             -- see :help oil-columns to see which columns are sortable
   --             { "type", "asc" },
   --             { "name", "asc" },
   --          },
   --       },
   --       keymaps = {
   --          ["g?"] = "actions.show_help",
   --          ["<CR>"] = "actions.select",
   --          ["<C-s>"] = { "actions.select", opts = { vertical = true }, desc = "Open the entry in a vertical split" },
   --          ["<C-h>"] = { "actions.select", opts = { horizontal = true }, desc = "Open the entry in a horizontal split" },
   --          ["<C-t>"] = { "actions.select", opts = { tab = true }, desc = "Open the entry in new tab" },
   --          ["<C-p>"] = "actions.preview",
   --          ["<C-c>"] = "actions.close",
   --          ["<C-l>"] = "actions.refresh",
   --          ["-"] = "actions.parent",
   --          ["_"] = "actions.open_cwd",
   --          ["`"] = "actions.cd",
   --          ["~"] = { "actions.cd", opts = { scope = "tab" }, desc = ":tcd to the current oil directory" },
   --          ["gs"] = "actions.change_sort",
   --          ["gx"] = "actions.open_external",
   --          ["g."] = "actions.toggle_hidden",
   --          ["g\\"] = "actions.toggle_trash",
   --       },
   --    },
   --    -- Optional dependencies
   --    dependencies = { "nvim-tree/nvim-web-devicons" },
   -- },
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
