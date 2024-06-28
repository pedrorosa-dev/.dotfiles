lvim.colorscheme = "dracula"


require("nvim-highlight-colors").setup({})


local dracula = require("dracula")
dracula.setup({
  colors = {
    bg = "#1e1d22",        -- background cinza mais escuro #121212, cor padrao do dracula ##282A36, backcround cinza escuro #1E1E1E
    fg = "#F8F8F2",
    selection = "#1e1d22", -- #44475A
    comment = "#51506e",
    red = "#FF5555",
    orange = "#FFB86C", --  original #94E59B
    yellow = "#94E59B", --  original #F1FA8C   #94E59B
    green = "#EEA177",  --  original #50FA7B   #EEA177
    purple = "#B0BEFF", --  original #BD93F9   #B0BEFF
    cyan = "#D1A4FD",   -- original  #f95aa5    #D1A4FD
    pink = "#FF92DF",   -- original  #FF92DF   #B2BEFF
    bright_red = "#FFFFFF",
    bright_green = "#69FF94",
    bright_yellow = "#FFFFA5",
    bright_blue = "#D6ACFF",
    bright_magenta = "#FF92DF",
    bright_cyan = "#A4FFFF",
    bright_white = "#FFFFFF",
    menu = "#222126",
    visual = "#3E4452",
    gutter_fg = "#4B5263",
    nontext = "#FFFFFF",
    white = "#ABB2BF",
    black = "#191A21",
  },
})
