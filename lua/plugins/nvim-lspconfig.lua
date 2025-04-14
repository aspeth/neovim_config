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
        -- rubocop = {
        --   -- See: https://docs.rubocop.org/rubocop/usage/lsp.html
        --   cmd = { "bundle", "exec", "rubocop", "--lsp" },
        --   root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
        -- },
        ruby_lsp = {
          cmd = { "mise", "exec", "--", "ruby-lsp", "stdio" },
          root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
        },
        sqlls = {},
        ts_ls = {
          init_options = {
            plugins = {
              {
                name = "@vue/typescript-plugin",
                location = "",
                languages = { "vue" },
              },
            },
          },
          filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
        },
        volar = {
          cmd = { "pnpm", "vue-language-server", "--stdio" },
          init_options = {
            vue = {
              hybridMode = true,
            },
          },
        },
        yamlls = {},
      },
    },
  },
}
