local present, ts = pcall(require, "nvim-treesitter.configs")

if not present then
  return
end

ts.setup {
ensure_installed = { "c", "lua", "rust", "bash", "typescript", "tsx", "javascript", "css", "html", "go", "gomod", "json", "python" },
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
