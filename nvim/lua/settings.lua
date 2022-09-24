HOME = os.getenv("HOME")
local g = vim.g
local o = vim.o
local cmd = vim.cmd

-- map leader key
g.mapleader = " "

-- config prettier

cmd [[
let g:prettier#quickfix_enabled = 0
let g:prettier#config#tab_width = 2
let g:prettier#config#use_tabs = 1
let g:prettier#exec_cmd_async = 1
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
]]

g.rustfmt_autosave = 1  -- RustFmt

g.used_javascript_libs = 'react'
o.termguicolors = true

-- airline theme
g.airline_theme='sobrio'
g.airline_powerline_fonts = 1

-- basic settings
o.encoding = "utf-8"
o.backspace = "indent,eol,start" -- backspace works on every char in insert mode
o.completeopt = 'menuone,noselect'
o.history = 1000
o.dictionary = '/usr/share/dict/words'
o.startofline = true
o.clipboard = 'unnamedplus'
o.mouse = 'a'
o.cursorline = true

-- Mapping waiting time
o.timeout = false
o.ttimeout = true
o.ttimeoutlen = 100

-- Display
o.showmatch  = true -- show matching brackets
o.scrolloff = 3 -- always show 3 rows from edge of the screen
o.synmaxcol = 300 -- stop syntax highlight after x lines for performance
o.laststatus = 2 -- always show status line

o.list = false -- do not display white characters
o.foldenable = false
o.foldlevel = 4 -- limit folding to 4 levels
o.foldmethod = 'syntax' -- use language syntax to generate folds
o.wrap = false --do not wrap lines even if very long
o.eol = false -- show if there's no eol char

-- Sidebar
o.number = true -- line number on the left
o.numberwidth = 3 -- always reserve 3 spaces for line number
o.signcolumn = 'yes' -- keep 1 column for coc.vim  check
o.modelines = 0
o.showcmd = true -- display command in bottom bar
o.undofile = true

-- Search
o.incsearch = true -- starts searching as soon as typing, without enter needed
o.ignorecase = true -- ignore letter case when searching
o.smartcase = true -- case insentive unless capitals used in search

o.matchtime = 2 -- delay before showing matching paren
o.mps = vim.o.mps .. ",<:>"

-- White characters
o.autoindent = true
o.smartindent = true
o.tabstop = 2 -- 1 tab = 2 spaces
o.shiftwidth = 2 -- indentation rule
o.formatoptions = 'qnj1' -- q  - comment formatting; n - numbered lists; j - remove comment when joining lines; 1 - don't break after one-letter word
o.expandtab = true -- expand tab to spaces

-- Backup files
o.backup = true -- use backup files
o.writebackup = false
o.swapfile = false -- do not use swap file
o.undodir = HOME .. '/.vim/tmp/undo//'     -- undo files
o.backupdir = HOME .. '/.vim/tmp/backup//' -- backups
o.directory = '/.vim/tmp/swap//'   -- swap files

-- Colorschemes

--o.background = 'dark'
--g.material_style = "palenight"
cmd[[colorscheme sobrio]]
--[[ g.tokyonight_style = "night" ]]
--[[ g.tokyonight_colors = { hint = "orange", error = "#ff0000" } ]]
--cmd[[colorscheme tokyonight]]
--g.python3_host_prog = '/usr/bin/python3'
