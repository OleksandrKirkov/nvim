-- [[ Settings panels ]] --

-- Vertical splits become right
opt.splitright = true

-- Horizontal splits become down
opt.splitbelow = true

-- [[ Additional settings ]] --

-- Use system clipboard
opt.clipboard = 'unnamedplus'

-- Disable additional files in end
opt.fixeol = false

-- Autocomplete
opt.completeopt = 'menuaone,noselect'

-- Don't autocomment new lines when switching go a new line
vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]]
