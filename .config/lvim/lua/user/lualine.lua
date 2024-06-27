lvim.builtin.lualine.sections.lualine_a = { "mode" }
lvim.builtin.lualine.sections.lualine_b = { "branch" }
lvim.builtin.lualine.sections.lualine_c = { "filename" }
lvim.builtin.lualine.sections.lualine_x = { "copilot", "encoding", "fileformat" }
lvim.builtin.lualine.sections.lualine_y = { "filetype", "progress" }
lvim.builtin.lualine.sections.lualine_z = { "location" }



lvim.builtin.lualine.options.component_separators = { left = "", right = "" }
lvim.builtin.lualine.options.section_separators = { left = "", right = "" }

lvim.builtin.lualine.options.theme = "auto"
--Digite auto para ele ser o mesmo tema que o scheme do lualine e aqui esta outros temas : dracula, base16, codedark, nightfly, moonfly, palenight, wombat, horizon, iceberg_dark, modus-vivendi e ayu

-- Definição das cores
local colors = {
  darkgray = "#16161d",
  gray = "#727169",
  innerbg = nil,      -- Deixe como nil para transparente
  outerbg = nil,      --#16161D
  normal = "#7e9cd8",
  insert = "#98bb6c", --#727169 #98bb6c
  visual = "#ffa066",
  replace = "#e46876",
  command = "#e6c384",
}

lvim.builtin.lualine.options.theme = {
  normal = {
    a = { fg = colors.darkgray, bg = colors.normal, gui = "bold" },
    b = { fg = colors.gray, bg = colors.outerbg },
    c = { fg = colors.gray, bg = colors.innerbg },
  },
  insert = {
    a = { fg = colors.darkgray, bg = colors.insert, gui = "bold" },
    b = { fg = colors.gray, bg = colors.outerbg },
    c = { fg = colors.gray, bg = colors.innerbg },
  },
  visual = {
    a = { fg = colors.darkgray, bg = colors.visual, gui = "bold" },
    b = { fg = colors.gray, bg = colors.outerbg },
    c = { fg = colors.gray, bg = colors.innerbg },
  },
  replace = {
    a = { fg = colors.darkgray, bg = colors.replace, gui = "bold" },
    b = { fg = colors.gray, bg = colors.outerbg },
    c = { fg = colors.gray, bg = colors.innerbg },
  },
  command = {
    a = { fg = colors.darkgray, bg = colors.command, gui = "bold" },
    b = { fg = colors.gray, bg = colors.outerbg },
    c = { fg = colors.gray, bg = colors.innerbg },
  },
  inactive = {
    a = { fg = colors.gray, bg = colors.outerbg, gui = "bold" },
    b = { fg = colors.gray, bg = colors.outerbg },
    c = { fg = colors.gray, bg = colors.innerbg },
  },
}

-- Definição dos separadores
lvim.builtin.lualine.options.component_separators = { left = "", right = "" }
lvim.builtin.lualine.options.section_separators = { left = "", right = "" }

-- Icones para o Lualine
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
