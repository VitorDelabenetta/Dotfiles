-- Blood-moon
-- return {
--   "nvim-lua/plenary.nvim", -- dummy entry so Lazy handles it
--   priority = 1000,
--   config = function()
--     vim.cmd.colorscheme("bloodmoon")
--   end,
-- }


--Nord
-- return {
--   {
--     "shaunsingh/nord.nvim",
--     lazy = false, -- load immediately
--     priority = 1000,
--     config = function()
--       -- enable transparent background
--       vim.g.nord_disable_background = true
--       vim.g.nord_borders = true
--       vim.g.nord_contrast = false
--       vim.g.nord_italic = true
--
--       -- Load the colorscheme
--       require("nord").set()
--
--       -- optional: make floating windows transparent too
--       vim.cmd([[
--         hi Normal guibg=none
--         hi NormalFloat guibg=none
--         hi SignColumn guibg=none
--         hi VertSplit guibg=none
--         hi StatusLine guibg=none
--         hi StatusLineNC guibg=none
--       ]])
--     end,
--   },
-- }


-- Catppuccin
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- Options: latte, frappe, macchiato, mocha
        transparent_background = true,
        term_colors = true,
        no_italic = false,
        no_bold = false,
        no_underline = false,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          telescope = true,
          treesitter = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
          lsp_trouble = true,
          which_key = true,
        },
      })
      -- Apply the colorscheme
      vim.cmd.colorscheme("catppuccin")

      -- Make background fully transparent
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
      vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
      vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
      vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
      vim.api.nvim_set_hl(0, "MsgArea", { bg = "none" })
      vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
      vim.api.nvim_set_hl(0, "TabLine", { bg = "none" })
      vim.api.nvim_set_hl(0, "TabLineFill", { bg = "none" })
    end,
  },
}

--ONE_DARK
-- return {
--   {
--     "navarasu/onedark.nvim",
--     priority = 1000,
--     config = function()
--       require("onedark").setup {
--         style = "darker", -- or 'dark', 'cool', 'deep', 'warm', 'warmer'
--         transparent = true,
--       }
--       require("onedark").load()
--     end
--   }
-- }

--SOLARIZED_OSAKA
-- return {
--   {
--     "craftzdog/solarized-osaka.nvim",
--     lazy = false, -- load immediately
--     priority = 1000, -- make sure it loads before other plugins
--     config = function()
--       require("solarized-osaka").setup({
--         transparent = true, -- ✅ transparent background
--         styles = {
--           sidebars = "transparent",
--           floats = "transparent",
--         },
--       })
--
--       -- Apply the colorscheme
--       vim.cmd([[colorscheme solarized-osaka]])
--     end,
--   },
-- }

-- TokyoNight
-- return {
--   {
--     "folke/tokyonight.nvim",
--     lazy = false,
--     priority = 1000,
--     opts = {
--       style = "storm", -- Options: "storm", "night", "moon", "day"
--       transparent = true, -- Enable transparent background
--       terminal_colors = true,
--       styles = {
--         comments = { italic = true },
--         keywords = { italic = true },
--         functions = {},
--         variables = {},
--         sidebars = "transparent", -- Transparent sidebars
--         floats = "transparent", -- Transparent floating windows
--       },
--     },
--     config = function(_, opts)
--       require("tokyonight").setup(opts)
--       vim.cmd([[colorscheme tokyonight]])
--     end,
--   },
-- }

-- Gruvbox
-- return {
--   {
--     "ellisonleao/gruvbox.nvim",
--     priority = 1000,
--     config = function()
--       require("gruvbox").setup({
--         terminal_colors = true, -- Use gruvbox colors in the terminal
--         undercurl = true,
--         underline = true,
--         bold = true,
--         italic = {
--           strings = true,
--           comments = true,
--           operators = false,
--           folds = true,
--         },
--         strikethrough = true,
--         invert_selection = false,
--         invert_signs = false,
--         invert_tabline = false,
--         invert_intend_guides = false,
--         inverse = true, -- Invert background for search, diffs, statuslines
--         contrast = "hard", -- options: "soft", "medium", "hard"
--         palette_overrides = {},
--         overrides = {
--           Normal = { bg = "none" },
--           NormalFloat = { bg = "none" },
--           SignColumn = { bg = "none" },
--           VertSplit = { bg = "none" },
--           StatusLine = { bg = "none" },
--         },
--         dim_inactive = false,
--         transparent_mode = true, -- enable transparency
--       })

--       vim.cmd("colorscheme gruvbox")
--     end,
--   },
-- }

-- Gruvbox Material
-- return {
--   {
--     "f4z3r/gruvbox-material.nvim",
--     name = "gruvbox-material",
--     lazy = false, -- Load during startup
--     priority = 1000, -- High priority to ensure it loads before other plugins
--     config = function()
--       require("gruvbox-material").setup({
--         background = {
--           transparent = true, -- Enable transparent background
--         },
--         contrast = "medium", -- Options: "hard", "medium", "soft"
--         -- Optional: Other configurations
--         italics = true, -- Enable italics for certain elements
--         comments = { italics = true }, -- Italic comments
--         float = {
--           force_background = false, -- Ensure floating windows are transparent
--           background_color = nil, -- Use default colors for floats
--         },
--         signs = {
--           force_background = false, -- Ensure signs are transparent
--           background_color = nil, -- Use default colors for signs
--         },
--       })
--       -- Apply the colorscheme
--       vim.cmd([[colorscheme gruvbox-material]])
--     end,
--   },
-- }

-- Rose pine
-- return {
--   {
--     "rose-pine/neovim",
--     config = function()
--       -- Set Rose Pine colorscheme
--       vim.cmd('colorscheme rose-pine')
--
--       -- Set transparent background by disabling it in Rose Pine
--       vim.g.rose_pine_disable_background = true
--
--       -- Force transparent background for other highlight groups
--       vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
--       vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
--       vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
--       vim.api.nvim_set_hl(0, 'StatusLine', { bg = 'none' })
--       vim.api.nvim_set_hl(0, 'StatusLineNC', { bg = 'none' })
--     end
--   }
-- }

-- Everforest
-- return {
--   "sainnhe/everforest",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     -- Everforest options
--     vim.g.everforest_background = "hard" -- "soft", "medium", or "hard"
--     vim.g.everforest_transparent_background = 1
--     vim.g.everforest_enable_italic = 1
--     vim.g.everforest_diagnostic_text_highlight = 1
--     vim.g.everforest_diagnostic_line_highlight = 1
--     vim.g.everforest_diagnostic_virtual_text = "colored"
--
--     -- Apply the colorscheme
--     vim.cmd("colorscheme everforest")
--   end,
-- }


-- Dracula
-- return {
--   {
--     "Mofiqul/dracula.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--       local dracula = require("dracula")
--       dracula.setup({
--         show_end_of_buffer = true, -- show '~' after end of buffers
--         transparent_bg = true,     -- 👈 enables transparency
--         italic_comment = true,
--         overrides = {},
--       })
--       vim.cmd.colorscheme("dracula")
--     end,
--   },
-- }

-- Monochrome
-- return {
--   {
--     "kdheepak/monochrome.nvim",
--     lazy = false,  -- load immediately
--     priority = 1000,  -- high priority to load before other plugins
--     config = function()
--       vim.cmd("colorscheme monochrome")
--       -- optional: enable transparent background
--       vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
--       vim.cmd("highlight NormalNC guibg=NONE ctermbg=NONE")
--       vim.cmd("highlight NormalFloat guibg=NONE ctermbg=NONE")
--       vim.cmd("highlight EndOfBuffer guibg=NONE ctermbg=NONE")
--     end,
--   }
-- }

-- Monokai
-- return {
--   {
--     "loctvl842/monokai-pro.nvim",
--     lazy = false,            -- load right away
--     priority = 1000,         -- make sure it's loaded before other plugins
--     config = function()
--       require("monokai-pro").setup({
--         transparent_background = true,
--         terminal_colors = true,
--         devicons = true,
--         filter = "pro", -- options: classic | octagon | pro | machine | ristretto | spectrum
--         styles = {
--           comments = { italic = true },
--           keywords = { italic = true },
--           functions = { bold = true },
--           variables = {},
--         },
--         background_clear = {
--           "float_win",   -- floating windows
--           "telescope",   -- telescope popups
--           "nvim-tree",   -- file explorer
--           "lazy",        -- Lazy.nvim UI
--         },
--       })
--
--       -- apply the colorscheme
--       vim.cmd("colorscheme monokai-pro")
--
--       -- Make Lazy.nvim background transparent too
--       vim.api.nvim_create_autocmd("ColorScheme", {
--         pattern = "monokai-pro",
--         callback = function()
--           vim.api.nvim_set_hl(0, "LazyNormal", { bg = "none" })
--           vim.api.nvim_set_hl(0, "LazyBorder", { bg = "none" })
--         end,
--       })
--     end,
--   },
-- }

-- Moonfly
-- return {
--   "bluz71/vim-moonfly-colors",
--   name = "moonfly",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     -- enable transparency
--     vim.g.moonflyTransparent = true
--
--     -- optional: disable background color for floating windows
--     vim.g.moonflyWinSeparator = 2
--     vim.g.moonflyNormalFloat = true
--
--     -- apply the colorscheme
--     vim.cmd("colorscheme moonfly")
--   end,
-- }


