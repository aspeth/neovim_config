local lspconfig = require("lspconfig")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Useful for debugging formatter issues
      format_notify = true,
      servers = {
        bashls = {
          filetypes = { "sh", "zsh" },
        },
        jsonls = {},
        lua_ls = {
          Lua = {
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
          },
        },
        marksman = {},
        rubocop = {
          -- See: https://docs.rubocop.org/rubocop/usage/lsp.html
          cmd = { "bundle", "exec", "rubocop", "--lsp" },
          root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
        },
        ruby_lsp = {
          cmd = { os.getenv("HOME") .. "/.asdf/shims/ruby-lsp", "stdio" },
          root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
        },
        sqlls = {},
        -- solargraph = {
        --   -- See: https://medium.com/@cristianvg/neovim-lsp-your-rbenv-gemset-and-solargraph-8896cb3df453
        --   cmd = { os.getenv("HOME") .. "/.asdf/shims/solargraph", "stdio" },
        --   root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
        --   settings = {
        --     solargraph = {
        --       autoformat = true,
        --       completion = true,
        --       diagnostics = false,
        --       folding = true,
        --       references = true,
        --       rename = true,
        --       symbols = true,
        --     },
        --   },
        -- },
        ts_ls = {},
        yamlls = {},
      },
    },
  },
}
