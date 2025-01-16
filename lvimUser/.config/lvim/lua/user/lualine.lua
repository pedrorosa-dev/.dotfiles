require('gitsigns').setup()

-- Definição das cores
vim.cmd([[highlight GitSignsStagedAdd guifg=#50b200]])    -- Cor para adição
vim.cmd([[highlight GitSignsStagedChange guifg=#426B8E]]) -- Cor para mudança
vim.cmd([[highlight GitSignsStagedDelete guifg=#f00000]]) -- Cor para remoção

-- Função para obter o estado do git diff
local function git_diff()
   local signs = vim.b.gitsigns_status_dict
   if not signs then
      return ''
   end

   local diff_icons = {
      added = { icon = '', color = 'GitSignsStagedAdd' },
      changed = { icon = '', color = 'GitSignsStagedChange' },
      removed = { icon = '', color = 'GitSignsStagedDelete' }
   }
   local diff_strs = {}

   for name, data in pairs(diff_icons) do
      if tonumber(signs[name]) and signs[name] > 0 then
         table.insert(diff_strs, '%#' .. data.color .. '#' .. data.icon .. signs[name] .. ' ')
      end
   end

   return #diff_strs > 0 and table.concat(diff_strs) or ''
end

-- Função para exibir o horário atual
-- local function current_time()
--    return os.date('%H:%M') -- Formato 24h (altere para '%I:%M %p' para 12h com AM/PM)
-- end

lvim.builtin.lualine.options.component_separators = { left = "", right = "" }
lvim.builtin.lualine.options.section_separators = { left = "", right = "" }
-- lvim.builtin.lualine.options.theme = "auto"
--Digite auto para ele ser o mesmo tema que o scheme do lualine e aqui esta outros temas : dracula, base16, codedark, nightfly, moonfly, palenight, wombat, horizon, iceberg_dark, modus-vivendi e ayu
-- Icones para o Lualine
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 

-- Configuração do lualine
-- lvim.builtin.lualine.sections.lualine_a = { "mode" }
lvim.builtin.lualine.sections.lualine_a = { { 'mode', separator = { left = '', right = '' }, right_padding = 2 } }
lvim.builtin.lualine.sections.lualine_b = { "branch" }
lvim.builtin.lualine.sections.lualine_c = { git_diff }
lvim.builtin.lualine.sections.lualine_x = { "diagnostics", "copilot" }
lvim.builtin.lualine.sections.lualine_y = { "filetype", "progress", "filename" }
-- lvim.builtin.lualine.sections.lualine_z = { "location" }
lvim.builtin.lualine.sections.lualine_z = { { 'location', separator = { right = '' }, left_padding = 2 } }




-- Definição das cores
local colors = {
   darkgray = "#16161d",
   gray = "#727169",
   branchfg = "#a9a9a9", -- #808080 #a0a0a0  #bcbcbc #a9a9a9 #c0c0c0
   branchbg = nil,       -- #1A1A1A nil
   innerbg = nil,        -- Deixe como nil para transparente
   outerbg = nil,        --#16161D nil
   normal = "#64BAFF",   --  #7e9cd8 #64BAFF
   insert = "#FF7081",   -- #98bb6c #FF7081 #727169
   visual = "#B990F7",   -- #ffa066 #B990F7
   replace = "#ffa066",  -- #e46876
   command = "#75bf63",  --  #e6c384 #00882E #75bf63
   git = "#FFFFFF",
}

lvim.builtin.lualine.options.theme = {
   normal = {
      a = { fg = colors.darkgray, bg = colors.normal, gui = "bold" },
      b = { fg = colors.branchfg, bg = colors.branchbg },
      c = { fg = colors.gray, bg = colors.innerbg },
   },
   insert = {
      a = { fg = colors.darkgray, bg = colors.insert, gui = "bold" },
      b = { fg = colors.branchfg, bg = colors.branchbg },
      c = { fg = colors.gray, bg = colors.innerbg },
   },
   visual = {
      a = { fg = colors.darkgray, bg = colors.visual, gui = "bold" },
      b = { fg = colors.branchfg, bg = colors.branchbg },
      c = { fg = colors.gray, bg = colors.innerbg },
   },
   replace = {
      a = { fg = colors.darkgray, bg = colors.replace, gui = "bold" },
      b = { fg = colors.branchfg, bg = colors.branchbg },
      c = { fg = colors.gray, bg = colors.innerbg },
   },
   command = {
      a = { fg = colors.darkgray, bg = colors.command, gui = "bold" },
      b = { fg = colors.branchfg, bg = colors.branchbg },
      c = { fg = colors.gray, bg = colors.innerbg },
   },
   inactive = {
      a = { fg = colors.gray, bg = colors.outerbg, gui = "bold" },
      b = { fg = colors.branchfg, bg = colors.branchbg },
      c = { fg = colors.gray, bg = colors.innerbg },
   },
}
