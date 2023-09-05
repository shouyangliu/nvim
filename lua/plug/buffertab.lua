require('buffertabs').setup({
    ---@type 'none'|'single'|'double'|'rounded'|'solid'|'shadow'|table
    border = 'rounded',

    ---@type integer
    padding = 1,

    ---@type boolean
    icons = true,

    ---@type string
    hl_group = 'Keyword',

    ---@type string
    hl_group_inactive = 'Comment',

    ---@type table[]
    exclude = {},

    ---@type boolean
    show_all = true,

    ---@type 'row'|'column'
    display = 'row',

    ---@type 'left'|'right'|'center'
    horizontal = 'right',

    ---@type 'top'|'bottom'|'center'
    vertical = 'top',
})
