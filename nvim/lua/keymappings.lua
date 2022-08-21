local keymap = vim.keymap.set
local silent = { silent = true }

-- Telescope
keymap("n", "<C-f>", ":Telescope find_files<cr>")
keymap("n", "<C-w>", ":Telescope live_grep<cr>")

-- Save file by CTRL-S
keymap("n", "<C-s>", ":w<CR>", silent)
keymap("i", "<C-s>", "<ESC> :w<CR>", silent)

-- Move selected line / block of text in visual mode
keymap("x", "K", ":move '<-2<CR>gv-gv", silent)
keymap("x", "J", ":move '>+1<CR>gv-gv", silent)

-- git conflict
keymap('n', 'co', '<Plug>(git-conflict-ours)')
keymap('n', 'ct', '<Plug>(git-conflict-theirs)')
keymap('n', 'cb', '<Plug>(git-conflict-both)')
keymap('n', 'c0', '<Plug>(git-conflict-none)')
keymap('n', ']x', '<Plug>(git-conflict-prev-conflict)')
keymap('n', '[x', '<Plug>(git-conflict-next-conflict)')
