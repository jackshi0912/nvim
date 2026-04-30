return {
  "sainnhe/gruvbox-material",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.gruvbox_material_background = 'hard' -- 'hard' gives the most contrast
    vim.g.gruvbox_material_foreground = 'material'
    vim.cmd.colorscheme("gruvbox-material")
  end,
}
