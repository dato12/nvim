return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2", 
  dependencies = { "nvim-lua/plenary.nvim" },
  lazy = false, 
  config = function()
    local harpoon = require("harpoon")

    harpoon:setup({
      settings = {
        save_on_toggle = true,
        sync_on_ui_close = false,
      },
      menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
      },
    })

    -- Keymaps (feel free to change these)
    vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end,
      { desc = "Harpoon: Add file" })
    vim.keymap.set("n", "<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
      { desc = "Harpoon: Toggle menu" })

    --- Keybinds To Jump to file
    vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "Harpoon: File 1" })
    vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "Harpoon: File 2" })
    vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "Harpoon: File 3" })
    vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "Harpoon: File 4" })
    vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end, { desc = "Harpoon: File 5" })
    vim.keymap.set("n", "<leader>6", function() harpoon:list():select(6) end, { desc = "Harpoon: File 6" })
    vim.keymap.set("n", "<leader>7", function() harpoon:list():select(7) end, { desc = "Harpoon: File 7" })
    vim.keymap.set("n", "<leader>8", function() harpoon:list():select(8) end, { desc = "Harpoon: File 8" })

    -- Remove Harpooned File
    vim.keymap.set("n", "<leader>hr", function()
        require("harpoon"):list():remove()
    end, { desc = "Remove file from Harpoon" })

  end,
}

