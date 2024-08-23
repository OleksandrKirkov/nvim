local treesitter = require'nvim-treesitter.configs'

treesitter.setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "javascript", "typescript", "tsx", "html", "css", "scss", "sass" },
  sync_install = false,
  auto_install = true,

  highlight = {
	  enable = true,
  }
