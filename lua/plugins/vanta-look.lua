return {
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = false, -- Load immediately so it can be used for the UI
    priority = 1000, -- Load before other plugins
  },

  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      colorscheme = "oxocarbon",
    },
  },
  
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      autocmds = {
        vanta_black_bg = {
          {
            event = "ColorScheme",
            pattern = "*",
            callback = function()
              vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
              vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })
              vim.api.nvim_set_hl(0, "NormalNC", { bg = "#000000" })
            end,
          },
        },
      },
    },
  },
}
