local kind = require("user.kind")

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "custom"


local header = {
   type = "text",
   val = require("user.banners").dashboard(),
   opts = {
      position = "center",
      hl = "String",
   },
}

local plugins = #lvim.plugins
local date = os.date("%a %d %b")
local plugin_count = {
   type = "text",
   val = "└─ " .. kind.cmp_kind.Module .. " " .. plugins .. " plugins in total ─┘",
   opts = {
      position = "center",
      hl = "String",
   },
}

local org = {
   type = "text",
   val = "",
   opts = {
      position = "center",
      hl = "String",
   },
}

local heading = {
   type = "text",
   val = "┌─ " .. kind.icons.calendar .. " Today is " .. date .. " ─┐",
   opts = {
      position = "center",
      hl = "String",
   },
}

local fortune = require "alpha.fortune" ()
-- fortune = fortune:gsub("^%s+", ""):gsub("%s+$", "")
local footer = {
   type = "text",
   val = fortune,
   opts = {
      position = "center",
      hl = "Comment",
      hl_shortcut = "Comment",
   },
}

local function button(sc, txt, keybind)
   local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")

   local opts = {
      position = "center",
      text = txt,
      shortcut = sc,
      cursor = 57,
      width = 50,
      align_shortcut = "right",
      hl_shortcut = "Number",
      hl = "Function",
   }
   if keybind then
      opts.keymap = { "n", sc_, keybind, { noremap = true, silent = true } }
   end

   return {
      type = "button",
      val = txt,
      on_press = function()
         local key = vim.api.nvim_replace_termcodes(sc_, true, false, true)
         vim.api.nvim_feedkeys(key, "normal", false)
      end,
      opts = opts,
   }
end

local buttons = {
   type = "group",
   val = {
      button("p", " " .. lvim.icons.ui.Project .. " Projects", "<CMD>Telescope projects<CR>"),
      button("f", " " .. kind.cmp_kind.Folder .. " Explore", ":Telescope find_files<CR>"),
      button("n", " " .. lvim.icons.ui.Project .. " New file", ":ene <BAR> startinsert <CR>"),
      -- button("s", " " .. kind.icons.magic .. " Restore", ":lua require('persistence').load()<cr>"),
      -- button(
      --   "g",
      --   " " .. kind.icons.git .. " Git Status",
      --   ":lua require('lvim.core.terminal')._exec_toggle({cmd = 'lazygit', count = 1, direction = 'float'})<CR>"
      -- ),
      button("r", " " .. kind.cmp_kind.Folder .. " Recents", ":Telescope oldfiles<CR>"),
      button("c", " " .. kind.icons.settings .. " Config", ":e ~/.config/lvim/config.lua<CR>"),
      button("C", " " .. kind.cmp_kind.Color .. " Colorscheme Config", ":e ~/.config/lvim/lua/user/colorscheme.lua<CR>"),
      button("l", " " .. kind.icons.git .. " Lazy", "<CMD>Lazy<CR>"),
      button("q", " " .. kind.icons.magic .. " Quit", ":q<CR>"),
   }
}

local section = {
   header = header,
   org = org,
   heading = heading,
   buttons = buttons,
   plugin_count = plugin_count,
   footer = footer,
}

lvim.builtin.alpha.custom = {
   config = {
      layout = {
         { type = "padding", val = 3 },
         section.header,
         { type = "padding", val = 1 },
         section.org,
         { type = "padding", val = 3 },
         section.heading,
         { type = "padding", val = 1 },
         section.plugin_count,
         { type = "padding", val = 4 },
         section.buttons,
         { type = "padding", val = 5 },
         section.footer,
      },
      opts = {
         margin = 5,
      },
   }
}
