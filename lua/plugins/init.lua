return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    config = function()
      dofile(vim.g.base46_cache .. "telescope")
      require("telescope").setup {
        defaults = {
          layout_strategy = "flex",
          sorting_strategy = "ascending",
          layout_config = {
            horizontal = {
              preview_width = 0.65,
              width = 0.8,
              height = 0.75,
            },
            vertical = {
              preview_height = 0.65,
              width = 0.7,
              height = 0.75,
            },
          },
        },
      }
    end,
  },
  {
    "smoka7/hop.nvim",
    version = "*",
    opts = {
      keys = "etovxqpdygfblzhckisuran",
    },
  },

  {
    "echasnovski/mini.surround",
    version = "*",
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  },
  {
    "echasnovski/mini.cursorword",
    version = "*",
    config = true,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {},
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
  },
  {
    "rcarriga/nvim-notify",
  },
  {
    "rmagatti/auto-session",
    lazy = false,

    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
      -- log_level = 'debug',
    },
  },
  -- {
  --   "nvim-neo-tree/neo-tree.nvim",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
  --     "MunifTanjim/nui.nvim",
  --   },
  -- },
  -- {
  --   "rmagatti/goto-preview",
  --   event = "BufEnter",
  --   config = true, -- necessary as per https://github.com/rmagatti/goto-preview/issues/88
  -- },
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
