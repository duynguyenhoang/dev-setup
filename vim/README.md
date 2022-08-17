Neovim Setup
============

Based on https://github.com/brainfucksec/neovim-lua

## Dependecies

* [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
* [fzf](https://github.com/junegunn/fzf)

## Install

```bash
make configs
# Start nvim and sync packages
nvim +PackerSync
```

## Notes

* Python
    For some reasons we have to setup `export PYENV_VERSION=your-venv` to work with python
