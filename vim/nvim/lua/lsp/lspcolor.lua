-----------------------------------------------------------
-- lspcolor configuration file
----------------------------------------------------------

-- Plugin: lspcolor
-- url: https://github.com/folke/lsp-colors.nvim

local status_ok, lspcolor = pcall(require, 'lsp-colors')
if not status_ok then
  return
end

-- config: https://github.com/folke/lsp-colors.nvim#%EF%B8%8F-configuration
lspcolor.setup()
