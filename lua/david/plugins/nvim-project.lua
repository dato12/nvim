return {
    {
      "coffebar/neovim-project",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
      },
      config = function()
        require("neovim-project").setup({
          projects = {
            "~/.config/nvim",
            "/mnt/g/My Drive/Obsidian Vault/",
          },
        })

        require("telescope").load_extension("neovim-project")
        
        vim.keymap.set(
          "n",
          "<leader>p",
          "<cmd>Telescope neovim-project discover<CR>",
          { desc = "Switch project" }
        )
      end,
    }
} 
