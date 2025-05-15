return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "*", -- latest stable release
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")
      local keybindings_opts = { noremap = true, silent = true }
      vim.keymap.set("n", "<leader>ff", builtin.find_files, keybindings_opts)
      vim.keymap.set("n", "<leader>gs", builtin.grep_string, keybindings_opts) -- grep word under cursor
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" }) -- dependency: ripgrep via Homebrew
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      -- This is your opts table
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({
              -- even more opts
            }),

            -- pseudo code / specification for writing custom displays, like the one
            -- for "codeactions"
            -- specific_opts = {
            --   [kind] = {
            --     make_indexed = function(items) -> indexed_items, width,
            --     make_displayer = function(widths) -> displayer
            --     make_display = function(displayer) -> function(e)
            --     make_ordinal = function(e) -> string
            --   },
            --   -- for example to disable the custom builtin "codeactions" display
            --      do the following
            --   codeactions = false,
            -- }
          },
        },
      })
      -- To get ui-select loaded and working with telescope, you need to call
      -- load_extension, somewhere after setup function:
      require("telescope").load_extension("ui-select")
    end,
  },
}
