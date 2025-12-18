return {
  "iamcco/render-markdown.nvim",
  config = function()
    require('render-markdown').setup({
      latex = {
        enabled = false,
      }, 
      icons = true,
    })
  end,
  ft = { "markdown" },
}

