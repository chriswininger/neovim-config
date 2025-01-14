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
					"tsserver", -- javascript
          "jdtls",
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
			lspconfig.tsserver.setup({})
			lspconfig.rust_analyzer.setup({})
      --lspconfig.jdtls.setup({})
		end,
	},
}
