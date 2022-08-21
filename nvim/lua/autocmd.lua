local cmd = vim.api.nvim_command  -- vim autocmd function

cmd('autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html PrettierAsync')

-- cmd('autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll')   -- eslint
