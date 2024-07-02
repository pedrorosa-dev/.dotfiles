lvim.builtin.which_key.mappings["t"] = {
  name = "+Todo",
  j = { "<cmd>TodoTrouble<cr>", "Trouble" },
  t = { "<cmd>TodoTelescope<cr>", "Telescope" },
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



lvim.builtin.which_key.mappings["J"] = {
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



lvim.builtin.which_key.mappings[":"] = {
  name = "+Telescope Browser",
  f = { "<cmd>Telescope file_browser<cr>", "File Browser" }
}



lvim.builtin.which_key.mappings["r"] = {
  name = "+Renamer",
  r = { "<cmd>lua require('renamer').rename()<cr>", "Rename" }
}


lvim.builtin.which_key.mappings["y"] = {
  name = "+Wrap",
  w = { "<cmd>set wrap<cr>", "Wrap" }
}

-- which key Codi

lvim.builtin.which_key.mappings["j"] = {
  name = "+Codi",
  c = { "<cmd>Codi<cr>", "Codi" },
  e = { "<cmd>CodiExpand<cr>", "Codi Expand" },
  u = { "<cmd>CodiUpdate<cr>", "Codi Update" },
  s = { "<cmd>CodiSelect<cr>", "Codi Select" },
  n = { "<cmd>CodiNew<cr>", "Codi New" }
}
