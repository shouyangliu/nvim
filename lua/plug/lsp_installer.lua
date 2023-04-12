-- :h mason-default-settings
require("mason").setup({
  log_level = vim.log.levels.DEBUG ,
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

-- mason-lspconfig uses the `lspconfig` server names in the APIs it exposes - not `mason.nvim` package names
-- https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/server-mapping.md
require("mason-lspconfig").setup({
  -- 确保安装，根据需要填写
  ensure_installed = {
    "sumneko_lua",
    "clang-format",
    "clangd",
    "pyright",
    "cmake-language-server",
    "jsonls",
    "emmet_ls",
    "html",
    "yamlls",
    "bashls",
  },
})

