return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup(
      { "*" },  -- '*' for all filetypes, or specify e.g. 'css', 'html', 'lua'
      {
        RGB = true,         -- #RGB hex codes
        RRGGBB = true,      -- #RRGGBB hex codes
        names = true,       -- "Name" codes like "Blue"
        tailwind = false,   -- Tailwind CSS classes
        css = true,         -- Enable all css features: rgb(), hsl(), etc.
        css_fn = true,      -- Enable css functions: rgb(), hsl()
      }
    )
  end
}

