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
