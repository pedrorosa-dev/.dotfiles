lvim.builtin.which_key.mappings["j"] = {
  name = "+Trouble",
  t = { "<cmd>Trouble<cr>", "Trouble" },
  l = { "<cmd>TroubleToggle loclist<cr>", "Loclist" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "Quickfix" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "LSP References" },
}

lvim.builtin.which_key.mappings["t"] = {
  name = "+Todo",
  T = { "<cmd>TodoTrouble<cr>", "Trouble" },
  t = { "<cmd>TodoTelescope<cr>", "Telescope" },
  n = { "<cmd>TodoNext<cr>", "Next" },
  p = { "<cmd>TodoPrev<cr>", "Prev" },
  l = { "<cmd>TodoLocList<cr>", "LocList" },
  q = { "<cmd>TodoQuickFix<cr>", "QuickFix" },
}



lvim.builtin.which_key.mappings["n"] = {
  name = "+DiffView",
  d = { "<cmd>DiffviewOpen<cr>", "Open DiffView" },
  c = { "<cmd>DiffviewClose<cr>", "Close DiffView" },
  r = { "<cmd>DiffviewRefresh<cr>", "Refresh DiffView" },
  h = { "<cmd>DiffviewFileHistory<cr>", "DiffView File History" },
  f = { "<cmd>DiffviewFocusFiles<cr>", "DiffView Focus Files" },
  l = { "<cmd>DiffviewLog<cr>", "DiffView Log" },
  t = { "<cmd>DiffviewToggleFiles<cr>", "DiffView Toggle Files" },
}


lvim.builtin.which_key.mappings["C"] = {
  name = "+Copilot",
  c = { "<cmd>Copilot<cr>", "Copilot" },
  s = { "<cmd>CopilotStop<cr>", "Copilot Stop" },
  p = { "<cmd>CopilotPanel<cr>", "Copilot Panel" },
}

-- lvim.builtin.which_key.mappings["o"] = {
--   name = "+Terminal",
--   t = { "<cmd>ToggleTerm<cr>", "Open Terminal" },
-- }



lvim.builtin.which_key.mappings["P"] = {
  name = "+Twilight",
  e = { "<cmd>TwilightEnable<cr>", "Twilight Enable" },
  d = { "<cmd>TwilightDisable<cr>", "Twilight Disable" },
}


lvim.builtin.which_key.mappings["x"] = {
  name = "+New File",
  a = { "<cmd>AdvancedNewFile<cr>", "New File" }
}


lvim.builtin.which_key.mappings["z"] = {
  name = "+Oil",
  o = { "<cmd>Oil<cr>", "Oil" }
}



-- lvim.builtin.which_key.mappings[":"] = {
--   name = "+Fine-Cmdline",
--   f = { "<cmd>FineCmdline<cr>", "Fine-Cmdline" }
-- }



lvim.builtin.which_key.mappings[":"] = {
  name = "+Telescope Browser",
  f = { "<cmd>Telescope file_browser<cr>", "File Browser" }
}



lvim.builtin.which_key.mappings["o"] = {
  name = "+Harpoon",
  a = { "<cmd>lua require('harpoon.mark').add_file()<cr>", "Add File" },
  d = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", "Delete" },
  j = { "<cmd>lua require('harpoon.ui').nav_next()<cr>", "Nav Next" },
  k = { "<cmd>lua require('harpoon.ui').nav_prev()<cr>", "Nav Prev" },
  t = { "<cmd>Telescope harpoon marks<cr>", "Harpoon Marks" },

}
