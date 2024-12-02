require("lualine").setup({
  options = {
    theme = "dracula-nvim",
    globalstatus = true,
  },
  sections = {
    lualine_z = {
      function()
        return " " .. os.date("%H:%M:%S")
      end,
      { "searchcount", separator = "", padding = { left = 1, right = 1 } },
      --{'selectioncount', separator='', padding = { left = 0, right = 0 }},
    },
  },
})
