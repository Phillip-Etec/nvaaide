return {
  -- add symbols-outline
  {
    "stevearc/oil.nvim",
    cmd = "Oil",
    keys = { { "<leader>cyo", "<cmd>Oil<cr>", desc = "Cover yourself in oil" } },
    opts = {
      -- add your options that should be passed to the setup() function here
      columns = {
        "icon",
        -- "permissions",
        -- "size",
        -- "mtime",
      },

      keymaps = {
        ["<C-h>"] = false,
        ["<C-l>"] = false,
        ["<C-i>"] = { "actions.select", opts = { horizontal = false }, desc = "Open the entry in a horizontal split" },
      },
      view_options = {
        -- Show files and directories that start with "."
        show_hidden = true, 
      },
    },
  },
}
