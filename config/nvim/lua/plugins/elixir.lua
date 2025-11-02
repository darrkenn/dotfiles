return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        elixirls = false,
      },
    },
  },

  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {},
      automatic_installation = false,
    },
  },
}
