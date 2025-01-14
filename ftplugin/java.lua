local jdtls = require('jdtls')

local root_markers = {'.git', 'mvnw', 'gradlew', 'pom.xml', 'build.gradle'}
local root_dir = require('jdtls.setup').find_root(root_markers)

-- https://eruizc.dev/blog/en/java-with-neovim/
local config = {
  cmd = {
    vim.fn.expand'$HOME/.local/share/nvim/mason/bin/jdtls'
  },
  --cmd = {
    --'java',
    --'-Declipse.application=org.eclipse.jdt.ls.core.id1',
    --'-Dosgi.bundles.defaultStartLevel=4',
    --'-Declipse.product=org.eclipse.jdt.ls.core.product',
    --'-Dlog.protocol=true',
    --'-Dlog.level=ALL',
    --'-Xmx1g',
    --'--add-modules=ALL-SYSTEM',
    --'--add-opens', 'java.base/java.util=ALL-UNNAMED',
    --'--add-opens', 'java.base/java.lang=ALL-UNNAMED',
    --'-jar', vim.fn.glob(vim.fn.stdpath('data') .. '~/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_*.jar'),
    --'-configuration', vim.fn.stdpath('data') .. '~/.local/share/nvim/mason/packages/jdtls/config_mac',
    --'-data', vim.fn.expand('~/.cache/jdtls-workspace'),
  --},
  root_dir = root_dir,
  settings = {
    java = {
      -- Configure your Java settings here
    }
  },
  init_options = {
    bundles = {}
  },
}

jdtls.start_or_attach(config)
