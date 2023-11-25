local lspkind = require('lspkind')
local cmp = require 'cmp'
--require("luasnip.loaders.from_vscode").lazy_load()

local kind_icons = {
    Class = "",
    Color = "",
    Constant = "ﲀ",
    Constructor = "",
    Enum = "",
    EnumMember = "",
    Event = " ",
    Field = "",
    File = "",
    Folder = "",
    Function = "󰊕",
    Interface = "",
    Keyword = "",
    Method = "",
    Module = "󰕳",
    Operator = "",
    Property = " ",
    Reference = "",
    Snippet = "",
    Struct = "",
    Text = "󰊄",
    TypeParameter = "",
    Unit = "󰚯",
    Value = "",
    Variable = "",
}

cmp.setup {
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    mapping = {
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<C-e>"] = cmp.mapping {
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        }
    },
    -- 来源
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'spell' },
        { name = 'vsnip' },
        { name = 'luasnip' },
    }),

    formatting = {
        fields = { "kind", "abbr", "menu" },
        format = function(entry, vim_item)
            vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
            vim_item.menu = ({
                nvim_lsp = "[Lsp]",
                buffer = "[Buffer]",
                spell = "[Spell]",
                path = "[Path]",
            })[entry.source.name]
            return vim_item
        end,
    },
  window = {
       completion = cmp.config.window.bordered(),
       documentation = cmp.config.window.bordered(),
    },
}

-- Use buffer source for `/`.
cmp.setup.cmdline({'/', '?'}, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':'.
cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})
