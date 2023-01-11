-----------------------------------------------------------
-- dockerfile configuration file
----------------------------------------------------------

-- Plugin: dockerfile
-- url: https://github.com/sindrets/diffview.nvim

local status_ok, dockerfile = pcall(require, 'dockerfile')
if not status_ok then
  return
end

dockerfile.setup({})
