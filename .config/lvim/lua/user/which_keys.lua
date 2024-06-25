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

lvim.builtin.which_key.mappings["P"] = {
  name = "+Pomodoro",
  s = { "<cmd>PomodoroStart<cr>", "Pomodoro Start" },
  t = { "<cmd>PomodoroStop<cr>", "Pomodoro Stop" },
  r = { "<cmd>PomodoroStatus<cr>", "Pomodoro Status" },
}

-- WICH KEYS DO COPILOT
lvim.builtin.which_key.mappings["C"] = {
  name = "+Copilot",
  c = { "<cmd>Copilot<cr>", "Copilot" },
  s = { "<cmd>CopilotStop<cr>", "Copilot Stop" },
  p = { "<cmd>CopilotPanel<cr>", "Copilot Panel" },
}

-- -- WICH KEYS DO TOGGLETERM
-- lvim.builtin.which_key.mappings["o"] = {
--   name = "+Terminal",
--   t = { "<cmd>ToggleTerm<cr>", "Open Terminal" },
-- }


-- WICH KEYS DO TWILIGHT

lvim.builtin.which_key.mappings["o"] = {
  name = "+Twilight",
  e = { "<cmd>TwilightEnable<cr>", "Twilight Enable" },
  d = { "<cmd>TwilightDisable<cr>", "Twilight Disable" },
}

-- WICH KEYS DO Advanced new file

lvim.builtin.which_key.mappings["x"] = {
  name = "+New File",
  n = { "<cmd>AdvancedNewFile<cr>", "New File" }
}

-- WICH KEYS DO OIL

lvim.builtin.which_key.mappings["z"] = {
  name = "+Oil",
  o = { "<cmd>Oil<cr>", "Oil" }
}


-- wich keys do fine-cdmline

lvim.builtin.which_key.mappings[":"] = {
  name = "+Fine-Cmdline",
  f = { "<cmd>FineCmdline<cr>", "Fine-Cmdline" }
}


-- wich keys do telescope file_browser

lvim.builtin.which_key.mappings["<C-t>"] = {
  name = "+Telescope",
  f = { "<cmd>Telescope file_browser<cr>", "File Browser" }
}
