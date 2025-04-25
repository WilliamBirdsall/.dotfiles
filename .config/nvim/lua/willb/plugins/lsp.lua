return {
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
        ensure_installed = {"cssls", "denols", "emmet_language_server", "html", "intelephense", "lua_ls", "rust_analyzer", "ts_ls"},
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.cssls.setup({})
      lspconfig.denols.setup({
        on_attach = on_attach,
        root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
      })
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
          "typescript",
          "typescriptreact",
          "javascriptreact",
          "js",
          "twig"
        }
      })
      lspconfig.html.setup({})
      lspconfig.intelephense.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.rust_analyzer.setup({})
      lspconfig.ts_ls.setup({
        on_attach = on_attach,
        root_dir = lspconfig.util.root_pattern("package.json"),
        single_file_support = false
      })

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
}
