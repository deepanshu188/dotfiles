local present, null_ls = pcall(require, "null-ls")

if not present then
	return
end

local b = null_ls.builtins

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local sources = {

	-- Lua
	b.formatting.stylua,

	-- JS
	b.formatting.prettierd,
	b.diagnostics.eslint_d,

	-- Python
	b.formatting.black,

	-- GO
	b.formatting.goimports,
	b.formatting.golines,

	-- Shell
	b.formatting.shfmt,
}

null_ls.setup({
	debug = true,
	sources = sources,
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format()
				end,
			})
		end
	end,
})
