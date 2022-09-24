  local present1, npairs = pcall(require, "nvim-autopairs")
  local present2, cmp = pcall(require, "cmp")

  if (present1 and present2) then
    return
  end

npairs.setup({
  check_ts = true,
  ts_config = {
    lua = { 'string', 'source' },
    javascript = { 'string', 'template_string' },
    java = false,
  }
})

local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done({ map_char = { tex = '' } }))
