return {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        -- Set initial theme
        vim.cmd([[colorscheme carbonfox]])
        
        -- Define a global function to switch flavors
        _G.SetNightfox = function(flavor)
            vim.g.nightfox_style = flavor
            vim.cmd("colorscheme " .. flavor)
        end 

        -- Optional: keymap for switching flavors interactively
        vim.keymap.set("n", "<leader>tf", function()
            vim.ui.select({"carbonfox", "duskfox", "nordfox"}, {prompt = "Pick Nightfox flavor:"}, _G.SetNightfox)
        end, {desc = "Switch Nightfox flavor"})
    end,
}
 
