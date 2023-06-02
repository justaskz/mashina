require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'numToStr/Comment.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-lua/plenary.nvim'
  use 'cappyzawa/trim.nvim'
  use 'Pocco81/auto-save.nvim'
  use 'nvim-lualine/lualine.nvim'
end)

require('Comment').setup()
require('telescope').setup()
require('nvim-tree').setup()
require('trim').setup()
require('auto-save').setup()
require('lualine').setup()

-------------------------------------------------
-- GENERAL
-------------------------------------------------
local _ = vim.opt

_.number = true         -- show line numbers
_.syntax = "on"         -- enable syntax highlighting
-- _.termguicolors = true  -- set term gui colors (most terminals support this)

_.swapfile = false
_.backup = false

vim.g.mapleader = ' '

-------------------------------------------------
-- KEYMAPING
-------------------------------------------------
local map = vim.api.nvim_set_keymap

map('n', '<C-h>', '0', { noremap = true })
map('n', '<C-l>', '$', { noremap = true })
map('n', '<leader>r', ':source ~/.config/nvim/init.lua<CR>', { noremap = true, silent = true })

map('n', '<C-s>', ':w<CR>', { noremap = true })
map('n', '<C-q>', ':q<CR>', { noremap = true })
map('n', '<C-/>', 'i', { noremap = true })

-------------------------------------------------
-- TELESCOPE
-------------------------------------------------
-- commands
vim.api.nvim_set_keymap('n', '<C-o><C-p>', ':Telescope commands<CR>', { noremap = true, silent = true })

-- grep_string
-- vim.api.nvim_set_keymap('n', '<C-g>', ':Telescope grep_string<CR>', { noremap = true, silent = true })

-- find_files
vim.api.nvim_set_keymap('n', '<C-p>', ':Telescope find_files<CR>', { noremap = true, silent = true })

-- fd ??
-- pickers
-- live_grep
-- vim.api.nvim_set_keymap('n', '<C-g>', ':Telescope live_grep<CR>', { noremap = true, silent = true })

-------------------------------------------------
-- COMMENT.NVIM
-------------------------------------------------

-- vim.api.nvim_set_keymap('n', '<gh>', ':CommentToggle<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('v', '<D-/>', ':CommentToggle<CR>', { noremap = true, silent = true })
