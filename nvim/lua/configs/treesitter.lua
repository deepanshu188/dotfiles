local present, ts = pcall(require, "nvim-treesitter.configs")

if not present then
  return
end

ts.setup {
auto_install = true,
  highlight = {
      enable = true,
      disable = { "ruby" },
      additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true
      },
    context_commentstring = {
       enable = true,
       enable_autocmd = false,
},
  }
