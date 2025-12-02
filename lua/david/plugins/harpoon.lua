return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",             -- ensure we use Harpoon2 branch
  dependencies = { "nvim-lua/plenary.nvim" },
  lazy = false,                    -- load immediately (or change to your preference)
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup({
      -- optional Harpoon settings, change as you like
      settings = {
        save_on_toggle = true,
        sync_on_ui_close = false,
      },
      menu = {
        -- menu width = window width minus 4
        width = vim.api.nvim_win_get_width(0) - 4,
      },
    })

    -- Keymaps (feel free to change these)
    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end,
      { desc = "Harpoon: Add file" })
    vim.keymap.set("n", "<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
      { desc = "Harpoon: Toggle menu" })

    -- Jump to first 4 harpooned files
    vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end,
      { desc = "Harpoon: File 1" })
    vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end,
      { desc = "Harpoon: File 2" })
    vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end,
      { desc = "Harpoon: File 3" })
    vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end,
      { desc = "Harpoon: File 4" })

    -- Remove Harpooned File
    vim.keymap.set("n", "<leader>hr", function()
        require("harpoon"):list():remove()
    end, { desc = "Remove file from Harpoon" })

  end,
}

