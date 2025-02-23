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
			local lspconfig = require("lspconfig")

      local capabilities = require('blink.cmp').get_lsp_capabilities()

			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.ts_ls.setup({ capabilities = capabilities })
			lspconfig.rust_analyzer.setup({ capabilities = capabilities })
      lspconfig.bashls.setup({ capabilities = capabilities })
      lspconfig.pylsp.setup({})
      --lspconfig.jdtls.setup({})
		end,
	},
}
