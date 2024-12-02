return {
  "elentok/togglr.nvim",
  opts = {
    -- Specify key map (set to false or nil to disable)
    key = "<c-s>",

    -- Specify which register to use (to avoid overriding the default register)
    register = "n",

    -- Enable debugging mode
    debug = false,

    -- Add custom sets to values to toggle between
    values = {
      ["&&"] = "||",
    },
  },
}
