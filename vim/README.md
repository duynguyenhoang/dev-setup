Neovim Setup
============

Based on https://github.com/brainfucksec/neovim-lua

## Dependecies

* [neovim 0.8](https://github.com/neovim/neovim/wiki/Installing-Neovim)
* [fzf](https://github.com/junegunn/fzf)

## Install

```bash
make configs
# Start nvim and sync packages
nvim +PackerSync
```

## Notes

### How to change theme

Changing theme requires some steps:

- Open file `lua/core/colors.lua`
    - Enable theme, for example `require('onedark')...`
    - Define your theme color, following example from `M.onedark_dark`. There is usually color scheme for every theme
- Open file `lua/core/statusline.lua`
    - Change line after `Set colorscheme (from core/colors.lua/colorscheme_name)`
    - For example `local colors = require('core/colors').github_dark`

### Others

* Python
    For some reasons we have to setup `export PYENV_VERSION=your-venv` to work with python

## TODO

- Automate configuration
