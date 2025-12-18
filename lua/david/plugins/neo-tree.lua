return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",         -- recommended branch
  dependencies = {
    "nvim-lua/plenary.nvim",  -- required
    "MunifTanjim/nui.nvim",   -- required
    "nvim-tree/nvim-web-devicons",  -- optional (for icons), but recommended
  },
  lazy = false,  -- load immediately
  config = function()
    require("neo-tree").setup({
      -- you can put your options here
      close_if_last_window = false,
      enable_git_status = true,
      enable_diagnostics = true,
      window = {
        mappings = {
          ["<space>e"] = "toggle",
          ["a"] = "add",         
          ["A"] = "add_directory",
          ["d"] = "delete",
          ["r"] = "rename",
          ["<space>e"] = "toggle_node",
        }
      }

    })

    vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle=true<CR>", { desc = "Toggle Neo‑tree file explorer" })
  end,
}
