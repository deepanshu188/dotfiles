return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- theme
  use 'folke/tokyonight.nvim'

  -- lsp 
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'jose-elias-alvarez/null-ls.nvim'

    --cmp
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use "rafamadriz/friendly-snippets"

  -- commenting
  use 'numToStr/Comment.nvim'
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- Git command
  use {
    "tpope/vim-fugitive",
    opt = true,
    cmd = {
      "G", "Git", "Gdiffsplit", "Gvdiffsplit", "Gedit", "Gsplit",
      "Gread", "Gwrite", "Ggrep", "Glgrep", "Gmove",
      "Gdelete", "Gremove", "Gbrowse",
    },
  }

  use {'akinsho/git-conflict.nvim', tag = "*", config = function()
    require('git-conflict').setup()
  end}


  -- common

  use 'vim-airline/vim-airline' -- powerline
  use 'vim-airline/vim-airline-themes'
  use 'norcalli/nvim-colorizer.lua' -- colorizer
--  use {'neoclide/coc.nvim', branch = 'release'}

  use 'andweeb/presence.nvim'   -- discord rich presence

  -- javascript  
  use { 'HerringtonDarkholme/yats.vim', ft = 'typescript' }
  use 'othree/javascript-libraries-syntax.vim'
  --use 'epilande/vim-es2015-snippets' -- Es6 snippets
  --use 'epilande/vim-react-snippets' -- React snippets
  --use 'mlaursen/vim-react-snippets' -- React snippets
  --use 'SirVer/ultisnips' -- Ultisnips
  --[[ use 'maxmellon/vim-jsx-pretty' -- JSX Highlight ]]
  use {'prettier/vim-prettier',
    run = 'yarn install',
  } -- prettier

  use { "windwp/nvim-autopairs" }  -- autopairs


  --rust
  use 'rust-lang/rust.vim'

  -- nvim tree | web devicons
  use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}

  -- telescope
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

  -- treesitter
     use {
       'nvim-treesitter/nvim-treesitter'
   }

end)
