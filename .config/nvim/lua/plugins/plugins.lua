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
  { "junegunn/fzf", build = "./install --all" },
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"
  },
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

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {"cssls", "emmet_language_server", "html", "intelephense", "lua_ls", "rust_analyzer", "tsserver"},
})

require("lspconfig").cssls.setup {}
require("lspconfig").emmet_language_server.setup {}
require("lspconfig").html.setup {}
require("lspconfig").intelephense.setup {}
require("lspconfig").lua_ls.setup {}
require("lspconfig").rust_analyzer.setup {}
require("lspconfig").tsserver.setup {}
