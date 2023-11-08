return {
   {
      "neovim/nvim-lspconfig",
      dependencies = {
         {
            "SmiteshP/nvim-navbuddy",
            dependencies = {
               "SmiteshP/nvim-navic",
               "MunifTanjim/nui.nvim"
            },
            keys = { { "<leader>cn", "<cmd>NavbuddyOpen<cr>", desc = "NavbuddyOpen" } },
            opts = { lsp = { auto_attach = true } },
         }
      },
      -- your lsp config or other stuff
   },

   {
      "sindrets/diffview.nvim",
      keys = { { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "VCSVimDiff" } },
   },

   {
      "williamboman/mason.nvim",
      opts = {
         ensure_installed = {
            "awk-language-server",
            "bash-language-server",
            "css-lsp",
            "docker-compose-language-service",
            "dockerfile-language-server",
            "flake8",
            "golangci-lint-langserver",
            "gopls",
            "html-lsp",
            "jq",
            "jq-lsp",
            "json-lsp",
            "lua-language-server",
            "nimlsp",
            "perlnavigator",
            "pyright",
            "rust-analyzer",
            "shellcheck",
            "shfmt",
            "sqlls",
            "stylua",
            "vue-language-server",
            "yaml-language-server",
         },
      },
   },

   --[[
   {
      -- [Make TokyoNight Transparent](https://www.lazyvim.org/configuration/recipes#make-tokyonight-transparent)
      "folke/tokyonight.nvim",
      opts = {
         transparent = true,
         styles = {
            sidebars = "transparent",
            floats = "transparent",
         },
      },
   },
   ]]--

   {
      "LazyVim/LazyVim",
      opts = {
         colorscheme = "slate",
      },
   },

}
