require("lazy").setup({
  -- Syntax Highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {"c", "css", "html", "javascript", "lua", "markdown", "php", "rust", "toml" },
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

  -- Fuzzy Finder
  { "junegunn/fzf", build = "./install --all" },

  -- Git Signs
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require('gitsigns').setup()
    end
  },

  -- LSP Management
  {
    "williamboman/mason.nvim",
    config = function()
      require('mason').setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"cssls", "emmet_language_server", "html", "intelephense", "lua_ls", "rust_analyzer", "tsserver"},
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.cssls.setup({})
      lspconfig.emmet_language_server.setup({
        filetypes = {
          "css",
          "html",
          "less",
          "njk",
          "php",
          "pug",
          "sass",
          "scss",
          "twig"
        }
      })
      lspconfig.html.setup({})
      lspconfig.intelephense.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.rust_analyzer.setup({})
      lspconfig.tsserver.setup({})

      vim.cmd([[au BufRead,BufNewFile *.njk set filetype=html]])

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  },

  -- Completion
  {
    'L3MON4D3/LuaSnip',
      dependencies = {
        'saadparwaiz1/cmp_luasnip',
        'rafamadriz/friendly-snippets'
      }
  },
  {
    'hrsh7th/nvim-cmp',
    config = function()
      local cmp = require("cmp")
      require("luasnip.loaders.from_vscode").lazy_load()
      cmp.setup({
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true })
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' }
        })
      })
    end
  },
  {
    'hrsh7th/cmp-nvim-lsp',
    config = function()
    end
  },
  -- Blame Line
  {
    "f-person/git-blame.nvim",
    -- load the plugin at startup
    event = "VeryLazy",
    -- Because of the keys part, you will be lazy loading this plugin.
    -- The plugin wil only load once one of the keys is used.
    -- If you want to load the plugin at startup, add something like event = "VeryLazy",
    -- or lazy = false. One of both options will work.
    opts = {
        -- your configuration comes here
        -- for example
        enabled = true,  -- if you want to enable the plugin
        message_template = " <author>, <date> | <summary> ", -- template for the blame message, check the Message template section for more options
        -- date_format = "%m-%d-%Y", -- template for the date, check Date format section for more options
        date_format = "%r", -- template for the date, check Date format section for more options
        virtual_text_column = 1,  -- virtual text start column, check Start virtual text at column section for more options
    },

  }
})
