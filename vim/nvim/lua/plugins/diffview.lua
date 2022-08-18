-----------------------------------------------------------
-- diffview configuration file
----------------------------------------------------------

-- Plugin: diffview
-- url: https://github.com/sindrets/diffview.nvim

local status_ok, diffview = pcall(require, 'diffview')
if not status_ok then
  return
end

diffview.setup({})
