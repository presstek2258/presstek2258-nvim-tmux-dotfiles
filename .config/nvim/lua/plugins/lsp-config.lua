LSPS = { "lua_ls", "clangd", "harper_ls", "pylsp", "jdtls", "ts_ls", "cssls", "html" }

return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = LSPS,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      for _, lsp in ipairs(LSPS) do
        lspconfig[lsp].setup({})
      end
    end,
  },
}
