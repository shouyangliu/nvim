
local M = {}

function M.decorate()
  local pum = vim.fn.pumvisible()

  -- 如果补全菜单（pum）可见
  if pum == 1 then
    -- 窗口 ID
    local win_id = vim.api.nvim_get_current_win()
    -- 缓冲区 ID
    local buf_id = vim.api.nvim_get_current_buf()
    -- 获取窗口的绝对位置
    local win_pos = vim.api.nvim_win_get_position(win_id)
    -- 获取窗口的大小（行数和列数）
    local win_size = vim.api.nvim_win_get_width(win_id) - 2, vim.api.nvim_win_get_height(win_id)

    -- 设置圆角边框样式
    local border_style = {
      "╭" .. string.rep("─", win_size[1]) .. "╮",
      "│" .. string.rep(" ", win_size[1]) .. "│",
      "├" .. string.rep("─", win_size[1]) .. "┤",
      "│" .. string.rep(" ", win_size[1]) .. "│",
      "╰" .. string.rep("─", win_size[1]) .. "╯",
    }

    -- 设置窗口选项
    vim.api.nvim_win_set_config(win_id, {
      relative = 'win',
      width = win_size[1],
      height = win_size[2] + 1,
      row = win_pos[1] + 1,
      col = win_pos[2],
      style = 'minimal',
      focusable = false,
      border = 'rounded',
    })

    -- 设置缓冲区的内容为圆角边框样式
    vim.api.nvim_buf_set_lines(buf_id, 0, -1, false, border_style)
  end
end

return M
