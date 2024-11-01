return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      transparent = true,
      styles = {
        sidebars = "transparent",
        keywords = { bold = true },
        functions = { bold = true },
        floats = "transparent",
      },
      on_colors = function(colors)
        colors.bg_statusline = colors.none
        colors.bg_highlight = colors.none -- this might be a bit confusin ngl
      end,
    },
  },
}
