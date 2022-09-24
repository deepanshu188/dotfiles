local present, packer = pcall(require, "packer")

if not present then
  return
end

return packer.startup(function()
  use 'wbthomason/packer.nvim'

  -- theme
  use 'folke/tokyonight.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use 'elvessousa/sobrio'

  -- lsp 
  use { "williamboman/mason.nvim" }
  use 'jose-elias-alvarez/null-ls.nvim'

    --cmp
  use {'hrsh7th/nvim-cmp',
    event = 'VimEnter',
    requires= {
      {'hrsh7th/cmp-buffer', after='nvim-cmp'},
      {'hrsh7th/cmp-cmdline', after='nvim-cmp'},
      {'hrsh7th/cmp-path',  after='nvim-cmp'},
      {'hrsh7th/cmp-nvim-lua', after='nvim-cmp'},
      {'saadparwaiz1/cmp_luasnip', after='nvim-cmp'},
    },
    config = function()
      require'configs.cmp'
    end
  }

   use {'L3MON4D3/LuaSnip'}
   use {'hrsh7th/cmp-nvim-lsp'}
   use {'rafamadriz/friendly-snippets'}

 use 'neovim/nvim-lspconfig'   --lspconfig

  -- commenting
  use 'numToStr/Comment.nvim'

  -- Git plugins

  use {'akinsho/git-conflict.nvim', tag = "*", config = function()
    require('git-conflict').setup()
  end}

  use 'lewis6991/gitsigns.nvim'

  -- common

  use 'vim-airline/vim-airline' -- powerline
  use 'vim-airline/vim-airline-themes'
  use 'norcalli/nvim-colorizer.lua' -- colorizer

  use "lukas-reineke/indent-blankline.nvim"

  use {
  'andweeb/presence.nvim',
  config = function()
      require('presence'):setup()
    end
  }   -- discord rich presence

  use {'prettier/vim-prettier',
    run = 'yarn install',
  } -- prettier

  --rust
  use 'rust-lang/rust.vim'

  -- nvim tree
  use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons',
  },
  tag = 'nightly'
}

  -- telescope
use {
  'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    cmd='Telescope',
  requires = { {'nvim-lua/plenary.nvim'} }
}

  -- treesitter
     use {
       'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        event="BufRead",
requires = {{'JoosepAlviste/nvim-ts-context-commentstring', after='nvim-treesitter'}},
        config = function ()
           require('configs.treesitter')
           require('configs.blankline')
           require('configs.comment')
        end
     }

-- autopairs
use {
  'windwp/nvim-autopairs',
   after = 'nvim-cmp',
   config = function ()
      require 'configs.autopairs'
   end
}

  -- startup screen
use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
}

end)
