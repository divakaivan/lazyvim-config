return {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    opts = {
        window = {
          position = "right",
          width = 40,
      },
      event_handlers = {
        {
          event = "file_open_requested",
          handler = function()
            -- Auto-close Neo-tree when a file is opened
            require("neo-tree.command").execute({ action = "close" })
          end,
        },
      },
    },
  }
  