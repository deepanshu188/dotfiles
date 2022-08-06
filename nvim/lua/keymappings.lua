local keymap = vim.keymap.set
local silent = { silent = true }

-- Telescope
keymap("n", "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")

-- Save file by CTRL-S
keymap("n", "<C-s>", ":w<CR>", silent)
keymap("i", "<C-s>", "<ESC> :w<CR>", silent)

-- Move selected line / block of text in visual mode
keymap("x", "K", ":move '<-2<CR>gv-gv", silent)
keymap("x", "J", ":move '>+1<CR>gv-gv", silent)
