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


lvim.builtin.which_key.mappings[":"] = {
   name = "+ZenMode",
   e = { "<cmd>ZenMode<cr>", "Toggle" },
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
   name = "+file explorer",
   f = { "<cmd>Yazi<cr>", "yazi" },
   -- o = { "<cmd>Oil<cr>", "Oil" },
}


lvim.builtin.which_key.mappings["r"] = {
   name = "+Renamer",
   r = { "<cmd>lua require('renamer').rename()<cr>", "Rename" }
}


lvim.builtin.which_key.mappings["W"] = {
   name = "+Wrap",
   w = { "<cmd>set wrap<cr>", "Wrap" }
}


lvim.builtin.which_key.mappings["j"] = {
   name = "+Codi",
   c = { "<cmd>Codi<cr>", "Codi" },
   e = { "<cmd>CodiExpand<cr>", "Codi Expand" },
   u = { "<cmd>CodiUpdate<cr>", "Codi Update" },
   s = { "<cmd>CodiSelect<cr>", "Codi Select" },
   n = { "<cmd>CodiNew<cr>", "Codi New" }
}


lvim.builtin.which_key.mappings["S"] = {
   name = "+Sticky Scroll",
   e = { "<cmd>TSContextToggle<cr>", "Sticky Scroll Toggle" }
}


lvim.builtin.which_key.mappings["K"] = {
   name = "+AutoSave",
   e = { "<cmd>ASToggle<cr>", "Enable/Disable" }
}

lvim.builtin.which_key.mappings["v"] = {
   name = "+Copilot",
   d = { "<cmd>Copilot disable<cr>", "Disable" },
   e = { "<cmd>Copilot enable<cr>", "Enable" },
   p = { "<cmd>Copilot panel<cr>", "Panel" },
   s = { "<cmd>Copilot suggestion<cr>", "Suggestion" },
   S = { "<cmd>Copilot status<cr>", "Status" },
   t = { "<cmd>Copilot toggle<cr>", "toggle" },
   a = { "<cmd>Copilot attach<cr>", "Attach" },
   D = { "<cmd>Copilot detach<cr>", "Detach" },
   v = { "<cmd>Copilot version<cr>", "Version" },
   c = { "<cmd>CopilotChatToggle<cr>", "Copilot Chat" },
   x = { "<cmd>CopilotChatClose<cr>", "Copilot Chat Close" },
   k = { "<cmd>CopilotChatReset<cr>", "Copilot Chat Reset" },
   g = { "<cmd>CopilotChatCommitStaged<cr>", "Copilot Chat Commit Staged" },
   G = { "<cmd>CopilotChatCommit<cr>", "Copilot Chat Commit" },
   f = { "<cmd>CopilotChatFix<cr>", "Copilot Chat Fix" },
   F = { "<cmd>CopilotChatExplain<cr>", "Copilot Chat Explain" }
}


lvim.builtin.which_key.mappings["m"] = {
   name = "+Window",
   h = { "<cmd>wincmd H<cr>", "Swap Left" },
   l = { "<cmd>wincmd L<cr>", "Swap Right" },
   k = { "<cmd>wincmd K<cr>", "Swap Up" },
   j = { "<cmd>wincmd J<cr>", " Swap Down" },
   c = { "<cmd>only<cr>", "Close all others" },
   p = { "<cmd>wincmd ><cr>", "Resize Left" },
   o = { "<cmd>wincmd <<cr>", "Resize Right" },
   t = { "<cmd>resize 9<cr>", "Resize Top" },
   f = { "<cmd>resize 0<cr>", "Hide Toggle" },
   b = { "<cmd>resize 18<cr>", "Resize Bottom" },
   m = { "<cmd>MaximizerToggle<cr>", "Maximize Toggle" },
   q = { "<cmd>vsplit<cr>", "Vertical Split" },
   n = { "<cmd>split<cr>", "Horizontal Split" },
   e = { "<cmd>tabprevious<cr>", "Tab Previous" },
   r = { "<cmd>tabnext<cr>", "Tab Next" },
   w = { "<cmd>tabclose<cr>", "Tab Close" },
   y = { "<cmd>tabonly<cr>", "Tab Only" },
   u = { "<cmd>tabnew<cr>", "Tab New" }
}

lvim.builtin.which_key.mappings["N"] = {
   name = "+Neotest",

   r = { "<cmd>Neotest run<cr>", "Run" },
   s = { "<cmd>Neotest stop<cr>", "Stop" },
   j = { "<cmd>Neotest jump<cr>", "Jump" },
   a = { "<cmd>Neotest attach<cr>", "Attach" },
   o = { "<cmd>Neotest output<cr>", "Output" },
   p = { "<cmd>Neotest output-panel<cr>", "Output-Panel" },
   S = { "<cmd>Neotest summary<cr>", "Summary" }
}

lvim.builtin.which_key.mappings["a"] = {
   name = "+Avante",
   c = { "<cmd>AvanteChat<cr>", "Open Chat" },
   a = { "<cmd>AvanteAsk<cr>", "Avante Ask" },
   d = { "<cmd>AvanteClear<cr>", "Avante Clear" },
   r = { "<cmd>AvanteRefresh<cr>", "Avante Refresh" },
   t = { "<cmd>AvanteToggle<cr>", "Avante Toggle" },
}
