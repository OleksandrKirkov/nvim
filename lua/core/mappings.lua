vim.g.mapleader = " "

-- NeoTree
vim.keymap.set('n', '<leader>e', function()

local is_open = false
  for _, win in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
    if vim.bo[vim.api.nvim_win_get_buf(win)].filetype == "neo-tree" then
      is_open = true
      break
    end
  end

  if is_open then
    -- Если открыто, закрываем Neotree
    vim.cmd('Neotree close')
  else
    -- Если закрыто, открываем Neotree
    vim.cmd('Neotree focus')
  end

end)
vim.keymap.set('n', '<leader>o', ':Neotree git_status<CR>')

vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)

-- Navigation

-- s1n7ax/nvim-window-picker
-- christoomey/vim-tmux-navigator

vim.keymap.set('n', '<A-h>', '<C-w>H')
vim.keymap.set('n', '<A-j>', '<C-w>J')
vim.keymap.set('n', '<A-k>', '<C-w>K')
vim.keymap.set('n', '<A-l>', '<C-w>L')
