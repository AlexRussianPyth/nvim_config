return {
  "catppuccin/nvim", --Цветовая схема
  priority = 1000,
  name = "catppuccin",
  config = function()
    require("catppuccin").setup()
    vim.cmd.colorscheme "catppuccin-macchiato"
  end,
}
