local function reSizeWindows()
  for _, window in ipairs(vim.api.nvim_list_wins()) do
    local buf = vim.api.nvim_win_get_buf(window)
    local name = vim.api.nvim_buf_get_name(buf)
    if string.match(name, 'NvimTree_1') then
      vim.api.nvim_win_set_width(window, 25) -- reset nvim-tree size on exit buffer
    end
  end
end

vim.api.nvim_create_autocmd("BufWinEnter", {
  callback = function()
    reSizeWindows()
  end
})

