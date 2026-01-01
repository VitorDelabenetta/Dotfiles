-- ~/.config/nvim/colors/bloodmoon.lua
-- Blood Moon theme for Neovim

local c = {
  bg = "#10100E",
  fg = "#C6C6C4",
  black = "#10100E",
  red = "#C40233",
  green = "#009F6B",
  yellow = "#FFD700",
  blue = "#0087BD",
  magenta = "#9A4EAE",
  cyan = "#20B2AA",
  white = "#C6C6C4",
  bright_black = "#696969",
  bright_red = "#FF2400",
  bright_green = "#03C03C",
  bright_yellow = "#FDFF00",
  bright_blue = "#007FFF",
  bright_magenta = "#FF1493",
  bright_cyan = "#00CCCC",
  bright_white = "#FFFAFA",
  selection = "#30302E",
}

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
vim.o.background = "dark"
vim.g.colors_name = "bloodmoon"

local set = vim.api.nvim_set_hl

-- UI
set(0, "Normal", { fg = c.fg, bg = c.bg })
set(0, "CursorLine", { bg = "#181818" })
set(0, "CursorLineNr", { fg = c.yellow, bold = true })
set(0, "LineNr", { fg = c.bright_black })
set(0, "Visual", { bg = c.selection })
set(0, "Search", { fg = c.bg, bg = c.yellow })
set(0, "IncSearch", { fg = c.bg, bg = c.bright_yellow })
set(0, "Pmenu", { fg = c.fg, bg = "#202020" })
set(0, "PmenuSel", { fg = c.bg, bg = c.bright_blue })
set(0, "StatusLine", { fg = c.bg, bg = c.fg })
set(0, "StatusLineNC", { fg = c.fg, bg = c.bright_black })
set(0, "VertSplit", { fg = c.bright_black })
set(0, "WinSeparator", { fg = c.bright_black })

-- Syntax
set(0, "Comment", { fg = c.bright_black, italic = true })
set(0, "String", { fg = c.green })
set(0, "Number", { fg = c.yellow })
set(0, "Function", { fg = c.bright_magenta })
set(0, "Keyword", { fg = c.magenta })
set(0, "Statement", { fg = c.red })
set(0, "Constant", { fg = c.cyan })
set(0, "Identifier", { fg = c.blue })
set(0, "Type", { fg = c.bright_blue })
set(0, "Special", { fg = c.bright_cyan })
set(0, "Todo", { fg = c.bright_yellow, bold = true })

-- Treesitter
set(0, "@variable", { fg = c.fg })
set(0, "@function", { fg = c.bright_magenta })
set(0, "@keyword", { fg = c.magenta })
set(0, "@string", { fg = c.green })
set(0, "@number", { fg = c.yellow })
set(0, "@type", { fg = c.bright_blue })
set(0, "@comment", { fg = c.bright_black, italic = true })

-- Diagnostics
set(0, "DiagnosticError", { fg = c.bright_red })
set(0, "DiagnosticWarn", { fg = c.bright_yellow })
set(0, "DiagnosticInfo", { fg = c.bright_blue })
set(0, "DiagnosticHint", { fg = c.cyan })

