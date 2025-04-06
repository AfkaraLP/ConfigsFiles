return {
  -- {
  --   "folke/tokyonight.nvim",
  --   opts = {
  --     style = "night",
  --     transparent = true,
  --     styles = {
  --       sidebars = "transparent",
  --       keywords = { bold = true },
  --       functions = { bold = true },
  --       floats = "transparent",
  --     },
  --     on_colors = function(colors)
  --       colors.bg_statusline = colors.none
  --       colors.bg_highlight = colors.none -- this might be a bit confusin ngl
  --     end,
  --   },
  -- },
  {

    {
      "ilof2/posterpole.nvim",
      priority = 1000,
      config = function()
        local posterpole = require("posterpole")

        -- Use it if you want use built-in colors
        -- local palette = vim.g.palette

        posterpole.setup({
          transparent = false,
          colorless_bg = false, -- grayscale or not
          dim_inactive = false, -- highlight inactive splits
          brightness = 0, -- negative numbers - darker, positive - lighter
          selected_tab_highlight = false, --highlight current selected tab
          fg_saturation = 0, -- font saturation, gray colors become more brighter
          bg_saturation = 0, -- background saturation
          colors = {
            posterpole = {}, -- { mainRed = {hex = "#550000", cterm = 95} }
          },
          groups = {
            posterpole = {
              -- Comment = {fg = {hex = "#FFF000", cterm = 95 }}
              -- Comment = {fg = palette.colors.mainCyan },
            },
          },
          adaptive_brightness = {
            enabled = false,
            max_brightness = 1, -- maximum brightness for the day
            min_brightness = -6, -- minimum brightness for the day
            daylight_duration = 12, -- how long is daylight
            noon_time = 12, -- hour when the theme will have maximum brightness
          },
          lualine = {
            transparent = true,
          }, -- config here
        })
        vim.cmd("colorscheme posterpole")

        -- This function create sheduled task, which will reload theme every hour
        -- Without "setup_adaptive" adaptive brightness will be set only after every restart
        posterpole.setup_adaptive()
      end,
    },
  },
}
