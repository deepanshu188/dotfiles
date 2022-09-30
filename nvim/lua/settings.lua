HOME = os.getenv("HOME")
local g = vim.g
local o = vim.o
local cmd = vim.cmd

-- map leader key
  g.mapleader = " "

-- treesitter folding
  o.foldmethod = "expr"
  o.foldexpr = "nvim_treesitter#foldexpr()"

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

-- basic settings
o.encoding = "utf-8"
o.backspace = "indent,eol,start"
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
o.showmatch  = true
o.scrolloff = 3
o.synmaxcol = 300
o.laststatus = 2

o.list = false -- do not display white characters
o.foldenable = false
o.foldlevel = 4
o.foldmethod = 'syntax'
o.wrap = false
o.eol = false

-- Sidebar
o.number = true
o.numberwidth = 3
o.signcolumn = 'yes'
o.modelines = 0
o.showcmd = true -- display command in bottom bar
o.undofile = true

-- Search
o.incsearch = true
o.ignorecase = true
o.smartcase = true

o.matchtime = 2
o.mps = vim.o.mps .. ",<:>"

-- White characters
o.autoindent = true
o.smartindent = true
o.tabstop = 2 -- 1 tab = 2 spaces
o.shiftwidth = 2 -- indentation rule
o.formatoptions = 'qnj1'
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
