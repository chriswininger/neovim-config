-- configured based on video series https://youtu.be/zHTeCSVAFNY?si=_NnM_ZnTGo7IoTia

-- === Tabs ===
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- === Set Leader Key (default is space) ===
vim.g.mapleader = " "

-- === Launch Neotree on Start ===
-- vim.cmd(":Neotree filesystem reveal left")

-- === Lazy Package Manager ===
-- package manager layz https://lazy.folke.io/installation
require("config.lazy")

-- === key bindings to access features of various plugins ===
-- telescope lets us search files, try space-bar ff, for example (we could put this in plugin config block but I like it here)
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
-- Neotree lets us browse files (if it has focus, hit a to add a new file or d to delete one)
vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal left<CR>")
-- lsp key bindings
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

-- format with stylua
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})