-----------------------------------------------------------
-- numbertoggle configuration file
----------------------------------------------------------

-- Plugin: nvim-numbertoggle
-- url: https://github.com/sitiom/nvim-numbertoggle

local status_ok, nvim_treesitter = pcall(require, 'vim-numbertoggle')
if not status_ok then
  return
end
