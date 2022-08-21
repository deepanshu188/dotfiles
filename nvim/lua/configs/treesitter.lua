require'nvim-treesitter.configs'.setup {
    highlight = {
      enable = true,
      disable = { "ruby" }
    },
    indent = {
        enable = true
      },
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
      },
  }
