-----------------------------------------------------------
-- colorizer configuration file
----------------------------------------------------------

-- Plugin: colorizer
-- url: https://github.com/norcalli/nvim-colorizer.lua

local status_ok, colorizer = pcall(require, 'colorizer')
if not status_ok then
  return
end

-- https://github.com/norcalli/nvim-colorizer.lua#customization
colorizer.setup({
  '*'; -- Highlight all files
})
