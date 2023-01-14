require('vgit').setup({
    settings = {
        hls = {
            GitBackground = 'Normal',
            GitHeader = 'NormalFloat',
            GitFooter = 'NormalFloat',
            GitBorder = 'LineNr',
            GitLineNr = 'LineNr',
            GitComment = 'Comment',
            GitSignsAdd = {
                gui = 'N',
                fg = '#228B22',
                bg = '#228B22',
                sp = nil,
                override = false,
            },
            GitSignsChange = {
                gui = nil,
                fg = '#7AA6DA',
                bg = nil,
                sp = nil,
                override = false,
            },
            GitSignDelete = {
                gui = nil,
                fg = '#e95678',
                bg = nil,
                sp = nil,
                override = false,
            },
            GitSignsAddLn = 'DiffAdd',
            GitSignsDeleteLn = 'DiffDelete',
            GitWordAdd = {
                gui = nil,
                fg = nil,
                bg = '#5f7a22',
                sp = nil,
                override = fasle,
            },
            GitWordDelete = {
                gui = nil,
                fg = nil,
                bg = '#960f3d',
                sp = nil,
                override = fasle,
            },
        },
    }
})
