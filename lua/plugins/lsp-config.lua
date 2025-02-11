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
			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({})
			lspconfig.ts_ls.setup({})
			lspconfig.rust_analyzer.setup({})
      lspconfig.bashls.setup({})
      --lspconfig.jdtls.setup({})
		end,
	},
}
