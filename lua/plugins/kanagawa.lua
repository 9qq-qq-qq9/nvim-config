return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  name = "kanagawa",
  priority = 1000,
  config = function()
    require("kanagawa").setup({
      commentStyle = { italic = false },
      keywordStyle = { italic = false },
    })

    vim.cmd.colorscheme("kanagawa")
  end,
}
