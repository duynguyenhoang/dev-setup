-----------------------------------------------------------
-- Color schemes configuration file
-----------------------------------------------------------

-- See: https://github.com/brainfucksec/neovim-lua#appearance

-- Neovim UI color scheme.
-- Add the selected color scheme in the `require` values below.
-- Current available color schemes: onedark, monokai, rose-pine.

-- Note: The instruction to load the color scheme may vary.
-- See the README of the selected color scheme for the instruction
-- to use.
-- e.g.: require('color_scheme').setup{}, vim.cmd('color_scheme') ...
{{ if eq .Env.VIM_THEME "onedark" }}
-----------------------------------------------------------
-- onedark theme
-----------------------------------------------------------
require('onedark').setup {
  -- styles: dark, darker, cool, deep, warm, warmer, light
  style = "{{ .Env.VIM_THEME_STYLE }}",
  colors = { fg = '#b2bbcc' }, --default: #a0a8b7
}

{{ else if eq .Env.VIM_THEME "github-theme" }}
-----------------------------------------------------------
-- Github theme
-----------------------------------------------------------
require("github-theme").setup({
  theme_style = '{{ .Env.VIM_THEME_STYLE }}',
  -- Can be: dark, dimmed, dark_default, dark_colorblind, light, light_default, light_colorblind
  function_style = "italic",
  sidebars = {"qf", "vista_kind", "terminal", "packer"},

  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  colors = {hint = "orange", error = "#ff0000"},

  -- Overwrite the highlight groups
  overrides = function(c)
    return {
      htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
      DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
      -- this will remove the highlight groups
      TSField = {},
    }
  end
})
{{ end }}

--[[
Statusline color schemes.
Import the following color schemes in your statusline.lua file
with: `require('core/colors').colorscheme_name` where the colors scheme name
is the value of the variables below.

e.g.: `local colors = require('core/colors').onedark_dark
See: `core/statusline.lua`

The color schemes below are created by following the "palette" file color
schemes. Color names are adapted to maintain a pattern, original names can be
different.
--]]
local M = {}

-----------------------------------------------------------
-- Theme colors
-----------------------------------------------------------
{{ if eq .Env.VIM_THEME_COLOR "onedark_dark" }}
-- Theme: OneDark (dark)
-- Colors: https://github.com/navarasu/onedark.nvim/blob/master/lua/onedark/palette.lua
M.onedark_dark = {
  bg = '#282c34',
  fg = '#b2bbcc',
  pink = '#c678dd',
  green = '#98c379',
  cyan = '#56b6c2',
  yellow = '#e5c07b',
  orange = '#d19a66',
  red = '#e86671',
}
{{ else if eq .Env.VIM_THEME_COLOR "monokai" }}
-- Theme: Monokai (classic)
-- Colors: https://github.com/tanvirtin/monokai.nvim/blob/master/lua/monokai.lua
M.monokai = {
  bg = '#202328', --default: #272a30
  fg = '#f8f8f0',
  pink = '#f92672',
  green = '#a6e22e',
  cyan = '#66d9ef',
  yellow = '#e6db74',
  orange = '#fd971f',
  red = '#e95678',
}
{{ else if eq .Env.VIM_THEME_COLOR "rose_pine" }}
-- Theme: Rosé Pine (main)
-- Colors: https://github.com/rose-pine/neovim/blob/main/lua/rose-pine/palette.lua
-- color names are adapted to the formats above
M.rose_pine = {
  bg = '#111019', --default: #191724
  fg = '#e0def4',
  pink = '#eb6f92',
  green = '#9ccfd8',
  cyan = '#31748f',
  yellow = '#f6c177',
  orange = '#2a2837',
  red = '#ebbcba',
}
{{ else if eq .Env.VIM_THEME_COLOR "github_dark" }}
-- Theme: github_dark
-- Colors: https://github.com/projekt0n/github-nvim-theme/blob/main/lua/github-theme/palette/dark.lua
-- color names are adapted to the formats above
M.github_dark= {
  bg = '#24292e',
  fg = '#c9d1d9',
  pink = '#c678dd',
  green = '#34d058',
  cyan = '#39c5cf',
  yellow = '#ffea7f',
  orange = '#d18616',
  red = '#ea4a5a',
}
{{ else if eq .Env.VIM_THEME_COLOR "github_light_colorblind" }}
-- Theme: github_light_colorblind
-- Colors: https://github.com/projekt0n/github-nvim-theme/blob/main/lua/github-theme/palette/light_colorblind.lua
-- color names are adapted to the formats above
M.github_light_colorblind= {
  bg = '#ffffff',
  fg = '#24292e',
  pink = '#eb6f92',
  green = '#22863a',
  cyan = '#1b7c83',
  yellow = '#b08800',
  orange = '#d18616',
  red = '#d73a49',
}
{{ end }}

return M
