return {
  "folke/snacks.nvim",
  -- priority = 1000,
  lazy = false,
  keys = {
    {
      "<leader>un",
      function()
        Snacks.notifier.show_history()
      end,
      desc = "Notification History",
    },
  },

  config = function()
    local snacks = require("snacks")
    snacks.setup({
      notifier = {
        enabled = true,
        timeout = 3000,
        style = "fancy",
      },

      indent = {
        enabled = true,
      },
      bigfile = {
        enabled = true,
      },

      rename = {
        enabled = true,
      },

      scroll = {
        enabled = true,
      },
      statuscolumn = {
        enabled = true,
      },
      win = {
        backdrop = 100,
      },
    })
  end,
}
