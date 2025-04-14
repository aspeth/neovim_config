if vim.g.vscode then
  -- VSCode Neovim
  require("config.lazy")
elseif vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font:h19"
  require("config.lazy")
else
  -- Ordinary Neovim
  require("config.lazy")
end
