require("telescope").load_extension('harpoon')

lvim.builtin.which_key.mappings["o"] = {
  name = "+Harpoon",
  a = { "<cmd>lua require('harpoon.mark').add_file()<cr>", "Add File" },
  d = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", "Delete" },
  k = { "<cmd>lua require('harpoon.ui').nav_next()<cr>", "Nav Next" },
  j = { "<cmd>lua require('harpoon.ui').nav_prev()<cr>", "Nav Prev" },
  t = { "<cmd>Telescope harpoon marks<cr>", "Harpoon Marks" },

}
