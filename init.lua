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

-- ==========  LSP Key Bindings =====================
-- show details about the current postion (shift+k is visual editing mode)
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
-- jump to the definition
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
-- jump to usage
vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
-- show possible fixes for an issue (code action)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
-- show the rest of a cut off code hint or error
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, {})
-- format with style
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
-- jump to next issue
vim.keymap.set('n', '<leader>n', vim.diagnostic.goto_next, opts)

-- ========================================

-- simplify split navigation (hold down ctrl + h/j/k/l together)
-- switch pains with leader key + arrows
vim.api.nvim_set_keymap('n', '<Leader><Up>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader><Down>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader><Left>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader><Right>', '<C-w>l', { noremap = true, silent = true })
-- vim.keymap.set('n', '<C-h>', '<C-w>h') -- Move to the window on the left
-- vim.keymap.set('n', '<C-j>', '<C-w>j') -- Move to the window below
-- vim.keymap.set('n', '<C-k>', '<C-w>k') -- Move to the window above
-- vim.keymap.set('n', '<C-l>', '<C-w>l') -- Move to the window on the right

-- rename a function or variable
vim.keymap.set("n", "<leader>rn", ":IncRename ")

-- assoicate Jenkins.* as a jenkins file
vim.filetype.add({
  pattern = {
    ['Jenkinsfile.*'] = 'groovy',
    ['jenkinsfile.*'] = 'groovy',
  }
})

-- copy to the os clipboard as well when doing x/y
vim.opt.clipboard:append("unnamedplus")

