return {
  {
    "mbbill/undotree",
    cmd = "UndotreeToggle",  -- lazy-load when the command is used
    keys = { { "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Toggle UndoTree" } },
    config = function()
      vim.g.undotree_WindowLayout = 2
      vim.g.undotree_ShortIndicators = 1
      vim.g.undotree_SetFocusWhenToggle = 1
    end,
  },
}
