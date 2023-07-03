
-- 引入所需插件和库
local cmp = require('cmp')
local popup = require('popup')

-- 设置 nvim-cmp 补全框的样式
cmp.setup {
  documentation = {
    border = 'rounded', -- 使用圆角边框
  },
  completion = {
    border = 'rounded', -- 使用圆角边框
  },
}

-- 创建函数来在补全弹出窗口周围绘制圆角边框
local function draw_rounded_border()
  local width, height = vim.api.nvim_win_get_width(0), vim.api.nvim_win_get_height(0)

  -- 绘制圆角边框
  local border = popup.create('', { 
    width = width + 2,
    height = height + 2,
    highlight = 'Normal',
    line = 'double',
    borderchars = {'╭', '─', '╮', '│', '╯', '─', '╰', '│'}
  })

  -- 调整补全窗口的位置
  vim.api.nvim_win_set_config(0, {
      relative = 'editor',
      width = width,
      height = height,
      row = 1,
      col = 1
  })

  -- 设置补全窗口的边框
  vim.api.nvim_buf_set_lines(0, 0, -1, false, border)
end

-- 监听 nvim-cmp 的完成事件，在显示补全列表时绘制圆角边框
vim.api.nvim_command([[
  autocmd! CompleteDone * lua draw_rounded_border()
]])
