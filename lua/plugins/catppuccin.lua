return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- or "latte", "frappe", "macchiato"
      })
      -- Use a valid Catppuccin colorscheme name (e.g. catppuccin-mocha)
      vim.cmd.colorscheme("catppuccin-mocha")
  end
}


