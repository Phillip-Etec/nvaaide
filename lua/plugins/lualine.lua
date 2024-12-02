return {
  "nvim-lualine/lualine.nvim",
  opts = {

    options = {
      theme = 'dracula-nvim',
      globalstatus = true,
    },

    sections = {
      lualine_z = {
        function()
          return " " .. os.date("%H:%M:%S")
        end,
        {
          'searchcount',
          separator='',
          padding = { left = 1, right = 1 },
          maxcount = 99999,
          timeout = 500,
        },
      }
    }

  }
}
