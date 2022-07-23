require'nvim-treesitter.configs'.setup {
    highlight = {
      enable = true,
      disable = { "ruby" }
    },
    context_commentstring = {
      enable = true,
      enable_autocmd = false
    },
  }
