return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "lua", "vim", "vimdoc", "javascript", "typescript", "python", "html", "css", "php"
            },
            highlight = { enable = true },
            indent = { enable = true },
            auto_install = true,
            rainbow = {
                enable = true,
                extended_mode = true,
                max_file_lines = nil,
            },
        })
    end,
}

