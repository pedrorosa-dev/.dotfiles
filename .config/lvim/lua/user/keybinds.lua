lvim.keys.normal_mode["<Leader>h"] = ":set wrap<CR>"
-- lvim.keys.normal_mode["<C-s>"] = ":w<CR>"
lvim.keys.insert_mode["kj"] = "<Esc>"
vim.cmd([[set relativenumber]])
vim.api.nvim_set_keymap("x", "<C-k>", ":move '<-2<CR>gv-gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<C-j>", ":move '>+1<CR>gv-gv", { noremap = true, silent = true }) -- lvim.keys.normal_mode["<S-x>"] = ":BufferKill<CR>"
vim.api.nvim_set_keymap("n", "<S-A-x>", ":BufDel *<CR>", { noremap = true, silent = true })
lvim.keys.visual_mode["<space>v"] = "g<C-G>"
lvim.keys.normal_mode["<C-a>"] = "ggVG"
vim.api.nvim_set_keymap("n", "<A-Down>", [[:m .+1<CR>==]], { noremap = true, silent = true })
lvim.keys.visual_mode["<C-l>"] = ":lua require('gitsigns').toggle_current_line_blame()<CR>"

lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"

lvim.keys.normal_mode["<S-q>"] = ":vsplit<CR>"

lvim.builtin.bufferline.active = true
lvim.builtin.bufferline.animation = true
lvim.builtin.bufferline.icons = true
lvim.builtin.bufferline.icon_custom_colors = true


vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', { noremap = true })
