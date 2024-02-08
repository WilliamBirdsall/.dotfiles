require("lazy").setup({
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme gruvbox]])
    end,
  },
  { "junegunn/fzf", build = "./install --all" }
})

require("gruvbox").setup({
	italic = {
		strings = false
	}
})

require("nvim-treesitter.configs").setup({
  ensure_installed = {"c", "css", "html", "javascript", "lua", "markdown", "php", "rust", "toml" },
  sync_install = false,
  highlight = {
    enable = true,
  }
})
