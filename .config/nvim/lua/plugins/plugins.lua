require("lazy").setup({
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{ "ellisonleao/gruvbox.nvim" },
    { "junegunn/fzf", dir = "~/.fzf", build = "./install --all" }
})

require("gruvbox").setup({
	italic = {
		strings = false
	}
})
