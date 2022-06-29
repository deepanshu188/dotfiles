" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}

let g:prettier#quickfix_enabled = 0
let g:prettier#config#tab_width = 2
let g:prettier#config#use_tabs = 1

autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html PrettierAsync

colorscheme happy_hacking
"colorscheme afterglow
"colorscheme onehalfdark
"colorscheme molokai
syntax on
filetype plugin indent on

" netrw configs

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 3
let g:netrw_altv = 1
let g:netrw_winsize = 75

nnoremap <silent> K :call CocAction('doHover')<CR>

" clipboard
set clipboard+=unnamedplus

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Rust
Plug 'rust-lang/rust.vim'

" vim-jsx-improve
Plug 'neoclide/vim-jsx-improve'

" pangloss js
Plug 'pangloss/vim-javascript'

" Prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" COC eslint
Plug 'neoclide/coc-eslint'

" Typescript VIM
Plug 'leafgarland/typescript-vim'

" Typescript JSX
Plug 'peitalin/vim-jsx-typescript'

" Fugitive git
Plug 'tpope/vim-fugitive'

" Initialize plugin system
call plug#end()
