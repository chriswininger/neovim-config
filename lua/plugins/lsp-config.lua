return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"rust_analyzer",
				  "ts_ls", -- javascript
          "jdtls", -- java (part of the config, might not be needed, see nvim-jdtls and ftplugin for more info)
          "bashls",
          "pylsp",
        },
			})
		end,
	},
  {
     "mfussenegger/nvim-jdtls",
     -- https://eruizc.dev/blog/en/java-with-neovim/
     -- https://github.com/mfussenegger/nvim-jdtls 
  },
	{
		"neovim/nvim-lspconfig",
		config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities()
      local function setup(server, opts)
        opts = opts or {}
        opts.capabilities = opts.capabilities or capabilities
        vim.lsp.config(server, opts)
        vim.lsp.enable(server)
      end

      setup("lua_ls")
      setup("ts_ls")
      setup("rust_analyzer")
      setup("bashls")
      setup("pylsp", {}) -- uses default capabilities
      -- setup("jdtls") -- typically configured via nvim-jdtls / ftplugin
		end,
	},
}
