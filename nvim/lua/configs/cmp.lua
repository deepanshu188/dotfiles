local cmp = require'cmp'
local luasnip = require('luasnip')

  cmp.setup({
    mapping = cmp.mapping.preset.insert({
          ['<Tab>'] = function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            else
              fallback()
            end
          end,
          ['<S-Tab>'] = function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            else
              fallback()
            end
          end,
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<Esc>'] = cmp.mapping.close(),
          ['<C-d>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
        }),

    sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
        { name = "luasnip" },
    },
   completion = {
      keyword_length = 1,
      completeopt = "menu,noselect"
    },

    snippet = {
      expand = function(args)
        luasnip.lsp_expand(args.body)
      end
    },

  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- luasnip
  require('luasnip.loaders.from_vscode').lazy_load()
--  require("luasnip.loaders.from_snipmate").lazy_load()

--  luasnip.filetype_extend("javascript", {"javascriptreact"})
--  luasnip.filetype_extend("typescript", {"typescriptreact"})
--  luasnip.filetype_extend("javascript", { "html" })
  
--  require("luasnip.loaders.from_vscode").lazy_load { paths = { "../snippets/typescript" } }
--  luasnip.filetype_extend("all", { "_" })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.

  require('lspconfig')['tsserver'].setup{
      root_dir = require'lspconfig'.util.root_pattern("yarn.lock", "package.json", ".git", "tsconfig.json", "jsconfig.json", "**.js", "**.ts"), 
      on_attach = on_attach,
      flags = lsp_flags,
  }

  require'lspconfig'.cssls.setup {
    root_dir = require'lspconfig'.util.root_pattern("yarn.lock", "package.json", ".git", "**.css"), 
    capabilities = capabilities,
  }
 
  require'lspconfig'.html.setup {
    capabilities = capabilities,
  }

  require('lspconfig')['rust_analyzer'].setup{
      on_attach = on_attach,
      flags = lsp_flags,
     -- Server-specific settings...
     settings = {
        ["rust-analyzer"] = {}
      }
  }
