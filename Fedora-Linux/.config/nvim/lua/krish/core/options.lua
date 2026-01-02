vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = false
opt.number = true

--tabs & indentations
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = true
opt.linebreak = true
opt.scrolloff = 4

--search settings
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

--themes
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

--clipboard
-- opt.clipboard:append("unnamedplus")
opt.clipboard = { 'unnamedplus', 'unnamed' }

--split windows
opt.splitright = true
opt.splitbelow = true

--disable mode show
opt.showmode = false
