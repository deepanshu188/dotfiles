local present, null_ls = pcall(require, "null_ls")

if not present then
  return
end

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.completion.spell,
    },
})
