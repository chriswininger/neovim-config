return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    -- treesitter is an abstract syntax tree builder, installing this gives us better syntax highlighting.
    -- Newer versions of nvim-treesitter no longer expose `nvim-treesitter.configs`,
    -- so we try that first, then fall back to the newer `nvim-treesitter.config`.
    local ok, configs = pcall(require, "nvim-treesitter.configs")
    if ok and configs.setup then
      configs.setup({
        ensure_installed = { "lua", "javascript", "rust" },
        highlight = { enable = true },
        indent = { enable = true },
      })
    else
      local ok_config, ts_config = pcall(require, "nvim-treesitter.config")
      if ok_config and ts_config.setup then
        -- New API: only basic global setup is supported here (e.g. install_dir).
        ts_config.setup({})
      end
    end
  end,
}

