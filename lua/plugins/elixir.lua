return {
  "elixir-tools/elixir-tools.nvim",
  version = "*",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local elixir = require "elixir"
    elixir.setup {
      nextls = { enable = false },
      elixirls = { enable = false },
      projectionist = { enable = true },
    }

    require("lspconfig").elixirls.setup {
      cmd = { vim.fn.expand "~/.local/share/nvim/mason/bin/elixir-ls" },
      root_dir = require("lspconfig.util").root_pattern "mix.exs",
    }
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
}
