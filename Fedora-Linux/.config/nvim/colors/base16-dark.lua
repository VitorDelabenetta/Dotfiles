-- foot-inspired.lua
-- Inspired by your Foot terminal config

local M = {}

-- Define your color palette
local colors = {
    bg         = "#181818",
    fg         = "#d8d8d8",
    cursor_bg  = "#181818",
    cursor_fg  = "#d8d8d8",

    black      = "#181818",
    red        = "#ab4642",
    green      = "#a1b56c",
    yellow     = "#f7ca88",
    blue       = "#7cafc2",
    magenta    = "#ba8baf",
    cyan       = "#86c1b9",
    white      = "#d8d8d8",

    bright_black  = "#585858",
    bright_red    = "#ab4642",
    bright_green  = "#a1b56c",
    bright_yellow = "#f7ca88",
    bright_blue   = "#7cafc2",
    bright_magenta= "#ba8baf",
    bright_cyan   = "#86c1b9",
    bright_white  = "#f8f8f8",

    selection_bg  = "#303030",
    selection_fg  = "#d8d8d8",
    search_match  = "#303030",
    search_fg     = "#d8d8d8",
    search_no_match_bg = "#181818",
    search_no_match_fg = "#ab4642",
}

-- Apply highlights
M.setup = function()
    local highlight = vim.api.nvim_set_hl

    -- Basic editor colors
    highlight(0, "Normal",          { fg = colors.fg, bg = colors.bg })
    highlight(0, "Cursor",          { fg = colors.cursor_fg, bg = colors.cursor_bg })
    highlight(0, "Visual",          { fg = colors.selection_fg, bg = colors.selection_bg })
    highlight(0, "LineNr",          { fg = colors.bright_black })
    highlight(0, "CursorLineNr",    { fg = colors.yellow })
    highlight(0, "StatusLine",      { fg = colors.fg, bg = colors.bright_black })
    highlight(0, "StatusLineNC",    { fg = colors.bright_black, bg = colors.bg })
    highlight(0, "Pmenu",           { fg = colors.fg, bg = colors.selection_bg })
    highlight(0, "PmenuSel",        { fg = colors.selection_fg, bg = colors.selection_bg })
    highlight(0, "Search",          { fg = colors.search_fg, bg = colors.search_match })
    highlight(0, "IncSearch",       { fg = colors.search_fg, bg = colors.search_no_match_bg })
    highlight(0, "MatchParen",      { fg = colors.yellow, bold = true })

    -- Syntax groups
    highlight(0, "Comment",         { fg = colors.bright_black, italic = true })
    highlight(0, "Constant",        { fg = colors.cyan })
    highlight(0, "String",          { fg = colors.green })
    highlight(0, "Identifier",      { fg = colors.blue })
    highlight(0, "Function",        { fg = colors.yellow })
    highlight(0, "Statement",       { fg = colors.red })
    highlight(0, "Keyword",         { fg = colors.magenta })
    highlight(0, "Operator",        { fg = colors.fg })
    highlight(0, "Type",            { fg = colors.yellow })
    highlight(0, "Special",         { fg = colors.magenta })
end

-- Activate the theme
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
end
vim.g.colors_name = "foot-inspired"
M.setup()

return M

