return {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,

    -- Add other themes here
    dependencies = {
        "folke/tokyonight.nvim",
        "catppuccin/nvim",
        "rebelot/kanagawa.nvim",
    },

    config = function()
        -- Set default theme
        vim.cmd("colorscheme carbonfox")

        -- List all themes you want available
        local themes = {
            "carbonfox", "duskfox", -- Nightfox family
            "tokyonight-night",     -- Tokyo Night 
            "catppuccin",           -- Catppuccin 
            "kanagawa"              -- Kanagawa 
        }

        -- Global function to switch themes
        _G.SwitchTheme = function(theme)
            vim.cmd("colorscheme " .. theme)
        end

        -- Keybind to pick any theme
        vim.keymap.set("n", "<leader>tf", function()
            vim.ui.select(themes, { prompt = "Pick a theme:" }, _G.SwitchTheme)
        end, { desc = "Switch Theme" })
    end,
}
