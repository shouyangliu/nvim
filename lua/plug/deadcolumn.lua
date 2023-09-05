local opts = {
    scope = 'line',
    modes = { 'i', 'n', 'ic', 'ix', 'R', 'Rc', 'Rx', 'Rv', 'Rvc', 'Rvx' },
    blending = {
        threshold = 120,
        colorcode = '#234433',
        hlgroup = {
            'Error',
            'background',
        },
    },
    warning = {
        alpha = 0.4,
        offset = 0,
        colorcode = '#FF0000',
        hlgroup = {
            'Error',
            'background',
        },
    },
    extra = {
        follow_tw = nil,
    },
}

require('deadcolumn').setup(opts) -- Call the setup function
