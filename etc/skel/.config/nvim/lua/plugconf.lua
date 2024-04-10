-- Tabline
require('tabline').setup({})
vim.opt.showtabline = 2

-- Telescope
require('telescope').setup({
  defaults = {
    file_ignore_patterns = {"node_modules/*"}
  }
})
