local seto = vim.o
local setg = vim.g

setg.mapleader = ' '
setg.maplocalleader = ' '
setg.termguicolors = true

seto.mouse = 'a'
seto.hlsearch = false
seto.completeopt = 'menuone,noselect'

seto.undofile = false
seto.updatetime = 250

seto.ignorecase = true
seto.smartcase = true

seto.number = true
seto.signcolumn = 'yes'
seto.breakindent = true
seto.relativenumber = true

seto.clipboard = 'unnamedplus'

seto.linespace = 2
seto.tabstop = 4
seto.softtabstop = 4
seto.shiftwidth = 4
seto.expandtab = true
seto.autoindent = true

seto.background = 'dark'
vim.cmd('colorscheme gruvbox')
-- vim.cmd('colorscheme miasma')
-- vim.cmd('colorscheme neofusion')
