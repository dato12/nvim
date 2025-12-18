-- Plugin spec for Lazy.nvim
return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        local toggleterm = require("toggleterm")

        toggleterm.setup {
            size = 20,          -- default height
            open_mapping = [[<C-\>]], -- Ctrl+\ toggles terminal
            hide_numbers = true,
            shade_terminals = true,
            shading_factor = 2,
            start_in_insert = true,
            insert_mappings = true,
            persist_size = true,
            direction = "float", -- can be "float", "horizontal", or "vertical"
            close_on_exit = true,
            shell = vim.o.shell,
        }

        -- Keymaps for convenience
        vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap("t", "<leader>t", "<C-\\><C-n><cmd>ToggleTerm<CR>", { noremap = true, silent = true })

        -- Optional: example of lazygit integration
        local Terminal = require('toggleterm.terminal').Terminal
        local lazygit  = Terminal:new({ cmd = "lazygit", hidden = true })
        function _lazygit_toggle()
            lazygit:toggle()
        end

        vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
    end
}
