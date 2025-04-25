 return { 
  -- Syntax Highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {"c", "css", "html", "javascript", "lua", "markdown", "php", "rust", "toml", "typescript" },
        sync_install = false,
        highlight = {
          enable = true,
        }
      })
    end
  },

  -- Colorscheme
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        italic = {
          strings = false
        }
      })
      vim.cmd([[colorscheme gruvbox]])
    end
  },
}
