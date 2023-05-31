local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "terraform-ls",
        "lua-language-server",
        "python-lsp-server",
        "dockerfile-language-server",
        "json-lsp",
        "typescript-language-server",
        "html-lsp",
        "marksman" -- markdown
      }
    }
  },
  {
    "nvim-telescope/telescope.nvim",
    defaults = {
      initial_mode = "normal",
    }
  },
  {
    "hrsh7th/nvim-cmp",
    opts = {
      completion = {
        autocomplete = false,
      }
    }
  }
}

return plugins
