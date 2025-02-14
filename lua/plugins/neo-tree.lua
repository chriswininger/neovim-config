return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    -- defining this makes neo-tree launch on start
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        vim.cmd("Neotree toggle")

        -- Switch back to the previous window (keep focus on document being edited)
        vim.cmd("wincmd p")
      end
    })

    -- hide . files by default but not git ignored files
    -- you can show hiden files by pressing shift+h
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = false,
          hide_dotfiles = true,
          hide_gitignored =false,
        }
      },
    })
  end,
}

