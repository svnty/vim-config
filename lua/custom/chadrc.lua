-- First read our docs (completely) then check the example_config repo
local M = {}

M.ui = {
  theme = "onedark",
  transparency = true,
  theme_toggle = { "gruvbox", "onedark" }
}

M.plugins = {
  user = {
    ["petertriho/nvim-scrollbar"] = {
      require("scrollbar").setup(),
      cmd = "ScrollbarShow"
    },
    ["kyazdani42/nvim-tree.lua"] = {
      event = "VimEnter"
    },
  },
  override = {
    ["goolord/alpha-nvim"] = {
      disable = false
    },
    ["petertriho/nvim-scrollbar"] = {
      show = true,
    },
    ["NvChad/ui"] = {
     tabufline = {
        enabled = true,
        lazyload = false,
      },
    },
    ["kyazdani42/nvim-tree.lua"] = {
      hijack_cursor = false,
      open_on_setup = true,
      open_on_setup_file = true,
      git = {
        enable = true,
        ignore = false,
        show_on_dirs = true,
      },
      view = {
        adaptive_size = false,
      },
      renderer = {
        highlight_git = true,
        icons = {
          show = {
            git = true
          }
        }
      },
      actions = {
        open_file = {
          resize_window = false,
        }
      },
      diagnostics = {
        enable = true,
        show_on_dirs = true
      }
    },
    ["NvChad/nvterm"] = {
      terminals = {
        shell = '/bin/zsh --login',
        type_opts = {
          horizontal = {
            location = "rightbelow",
            split_ratio = 0.275
          },
        },
      }
    }
  }
}

return M
