local lspkind = require('lspkind')
local cmp = require 'cmp'
local lspconfig = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)


cmp.setup{
    sources = cmp.config.sources({
        {name = 'nvim_lsp'},
        {name = 'buffer'},
        {name = 'path'},
--        {name = 'cmdline'},
    }),
   formatting = {
--       format = lspkind.cmp_format({
--           with_text = true,
--           maxwidth = 50,
--           before = function(entry, vim_item)
--               vim_item.menu = "["..string.upper(entry.source.name).."]"
--               return vim_item
--           end
--       })
    },

    window = {
--        completion = cmp.config.window.bordered(),
--        decumentation = cmp.config.window.bordered(),
    },

    mapping = {
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
              fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
            end
        end, { "i", "s" }),
        ["<C-Tab>"] = cmp.mapping(function()
            if cmp.visible() then
                cmp.select_prev_item()
            end
        end, { "i", "s" }),
        ["<C-u>"] = cmp.mapping.abort(),
    }
}

        
cmp.setup.cmdline('/',{
    sources = {
        {name = 'buffer'}    
    }
})

cmp.setup.cmdline(':',{
    sources = cmp.config.sources({
        {name = 'path'},
        {name = 'cmdline'}
    })
})

local servers = { 'clangd', 'pyright', 'cmake' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    -- on_attach = my_custom_on_attach,
    capabilities = capabilities,
  }
end
