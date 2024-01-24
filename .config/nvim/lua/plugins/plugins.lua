require("lazy").setup({
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{ "ellisonleao/gruvbox.nvim", priority = 1000 }
})

require("gruvbox").setup({
	italic = {
		strings = false
	}
})
