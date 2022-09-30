local present, packer = pcall(require, "packer")

if not present then
	return
end

return packer.startup(function()
	use("wbthomason/packer.nvim")

	-- theme
	use("folke/tokyonight.nvim")
	use("ellisonleao/gruvbox.nvim")
	use("elvessousa/sobrio")

	-- lsp
	use({ "williamboman/mason.nvim" })
	use("jose-elias-alvarez/null-ls.nvim")

	--cmp
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	use("neovim/nvim-lspconfig") --lspconfig

	-- commenting
	use("numToStr/Comment.nvim")
	use("JoosepAlviste/nvim-ts-context-commentstring")

	-- Git plugins

	use({
		"akinsho/git-conflict.nvim",
		tag = "*",
		config = function()
			require("git-conflict").setup()
		end,
	})

	use("lewis6991/gitsigns.nvim")

	-- common

	use({
		"nvim-lualine/lualine.nvim",
		config = function()
			require("configs.lualine")
		end,
	})

	use("norcalli/nvim-colorizer.lua") -- colorizer

	use("lukas-reineke/indent-blankline.nvim")

	use({
		"andweeb/presence.nvim",
		config = function()
			require("presence"):setup()
		end,
	}) -- discord rich presence

	--rust
	use("rust-lang/rust.vim")

	-- nvim tree
	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons",
		},
		tag = "nightly",
	})

	-- telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		cmd = "Telescope",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	-- autopairs
	use("windwp/nvim-autopairs")

	-- impatient
	use("lewis6991/impatient.nvim")

	-- startup screen
	use({
		"goolord/alpha-nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
		config = function()
			require("alpha").setup(require("alpha.themes.startify").config)
		end,
	})
end)
