return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000, -- High priority so it loads before other UI plugins
  config = function()
    require("gruvbox").setup({
      terminal_colors = true, -- Adds Neovim terminal colors
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true, -- Invert background for search, diffs, etc.
      contrast = "hard", -- Options: "hard", "soft", or "" (default)
      palette_overrides = {},
      overrides = {},
      dim_inactive = false,
      transparent_mode = false, -- Set to true if you want to use your terminal's background
    })

    -- Apply the colorscheme
    vim.cmd("colorscheme gruvbox")
  end
}
