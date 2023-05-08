
require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
end)

require('telescope').setup{
  pickers = {
    find_files = {
      theme = "dropdown"
    }
  }
}

-- show line numbers
vim.opt.number = true
