lvim.colorscheme = "min-theme"
lvim.transparent_window = false

require("nvim-highlight-colors").setup({})




require('min-theme').setup({
   theme = 'dark',      -- String: 'dark' or 'light', determines the colorscheme used
   transparent = true,  -- Boolean: Sets the background to transparent
   italics = {
      comments = true,  -- Boolean: Italicizes comments
      keywords = true,  -- Boolean: Italicizes keywords
      functions = true, -- Boolean: Italicizes functions
      strings = true,   -- Boolean: Italicizes strings
      variables = true, -- Boolean: Italicizes variables
   },
   overrides = {
      Normal = { bg = "#202020" },                              -- Background color #181818
      Visual = { bg = "#606060" },                              -- #606060  #264F78                          -- Selection color (Visual mode)
      CursorLine = { bg = "#323232" },                          -- Background color for the current line #323232 #252525
      LineNr = { fg = "#4B5263" },                              -- Gutter foreground #646464
      NormalFloat = { fg = "#ABB2BF", bg = "#202020" },         -- White #ABB2BF
      Search = { bg = "#606060", fg = "#ABB2BF" },              -- Highlight color for search matches
      IncSearch = { bg = "#606060", fg = "#FF657E" },           -- Highlight color for incremental search matches
      NvimTreeNormal = { bg = "#1A1A1A" },                      -- Background color for nvim-tree headers
      NvimTreeEndOfBuffer = { fg = "#1A1A1A", bg = "#1A1A1A" }, -- Background para o final do buffer do nvim-tree
      NvimTreeEmptyFolderName = { fg = "#666666" },             -- Cor do texto para nomes de pastas vazias #666666
      NvimTreeOpenedFolderName = { fg = "#579FDC" },            -- Cor do texto para nomes de pastas abertas #AAAAAA
      NvimTreeFolderName = { fg = "#AAAAAA" },                  -- Cor do texto para nomes de pastas #579FDC
      WinBarNC = { fg = "#202020", bg = "#202020" },            -- Barra de janelas não ativa
      BufferLineFill = { bg = "#1A1A1A" },                      -- Cor de fundo para o preenchimento no bufferline.nvim
      EndOfBuffer = { fg = "#202020", bg = "#202020" },         -- Configuração para o final do buffer
      -- NonText = { fg = "#FFFFFF" },                   -- Non-text foreground
      -- Comment = { fg = "#51506e", italic = true },
      -- Constant = { fg = "#FF657E" }, -- Red
      -- String = { fg = "#FFB86C" },      -- Orange
      -- Identifier = { fg = "#94E59B" }, -- Yellow
      -- Function = { fg = "#EEA177" },    -- Green
      -- Statement = { fg = "#B0BEFF" },   -- Purple
      -- Type = { fg = "#D1A4FD" },        -- Cyan
      -- Special = { fg = "#FF92DF" },     -- Pink
      -- PreProc = { fg = "#FFFFFF" },     -- Bright Red
      -- Include = { fg = "#69FF94" },     -- Bright Green
      -- Keyword = { fg = "#FFFFA5" },     -- Bright Yellow
      -- Define = { fg = "#D6ACFF" },      -- Bright Blue
      -- Macro = { fg = "#FF92DF" },       -- Bright Magenta
      -- PreCondit = { fg = "#A4FFFF" },   -- Bright Cyan
      -- Todo = { fg = "#FFFFFF" },    -- Bright White
   },
})




-- local dracula = require("dracula")
-- dracula.setup({
--    colors = {
--       bg = "#1e1d22",        -- background cinza mais escuro #121212, cor padrao do dracula ##282A36, backcround cinza escuro #1E1E1E
--       fg = "#F8F8F2",
--       selection = "#1e1d22", -- #44475A
--       comment = "#51506e",
--       red = "#FF5555",
--       orange = "#FFB86C",
--       yellow = "#F1FA8C", --  original #F1FA8C   #94E59B
--       green = "#50FA7B",  --  original #50FA7B   #EEA177
--       purple = "#BD93F9", --  original #BD93F9   #B0BEFF
--       cyan = "#f95aa5",   -- original  #f95aa5    #D1A4FD
--       pink = "#FF92DF",   -- original  #FF92DF   #B2BEFF
--       bright_red = "#FFFFFF",
--       bright_green = "#69FF94",
--       bright_yellow = "#FFFFA5",
--       bright_blue = "#D6ACFF",
--       bright_magenta = "#FF92DF",
--       bright_cyan = "#A4FFFF",
--       bright_white = "#FFFFFF",
--       menu = "#222126",
--       visual = "#3E4452",
--       gutter_fg = "#4B5263",
--       nontext = "#FFFFFF",
--       white = "#ABB2BF",
--       black = "#191A21",
--       NvimTreeNormal = "#1e1d22",
--       WinBarNC = { fg = "#1e1d22", bg = "#1e1d22" },
--       EndOfBuffer = { fg = "#1e1d22", bg = "#1e1d22" }, -- Configuração para o final do buffer
--       NvimTreeFolderName = "#1e1d22",
--       NvimTreeEmptyFolderName = "#1e1d22",
--       NvimTreeOpenedFolderName = "#1e1d22",
--       NvimTreeEndOfBuffer = "#1e1d22",
--    },
-- })
