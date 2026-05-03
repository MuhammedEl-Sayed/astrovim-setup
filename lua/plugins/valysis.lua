-- lua/plugins/valysis.lua
-- Drop this in your AstroNvim lua/plugins/ directory
-- It registers the valysis colorscheme and sets it as default

return {
  -- Tell AstroNvim which colorscheme to use
  {
    "AstroNvim/astroui",
    opts = {
      colorscheme = "valysis",
    },
  },

  -- Dummy plugin spec that just sources colors/valysis.lua from your config
  -- No external dependency needed — the colorscheme lives in colors/valysis.lua
  {
    dir = vim.fn.stdpath("config"),  -- points to ~/.config/nvim
    name = "valysis-theme",
    lazy = false,
    priority = 1000,               -- load before everything else
    config = function()
      -- Only load if not already set by astroui
      if vim.g.colors_name ~= "valysis" then
        vim.cmd("colorscheme valysis")
      end
    end,
  },
}
