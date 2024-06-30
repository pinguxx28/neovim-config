-- Set tree view for netrw
vim.cmd("let g:netrw_liststyle = 3")

-- A handy shortcut
local opt = vim.opt

opt.number = true			-- Current line number
opt.relativenumber = true	-- Relative line numbers

opt.tabstop = 4			-- 4 spaces for tabs
opt.shiftwidth = 4		-- 4 spaces for indent width
opt.expandtab = false	-- Don't convert tabs to spaces
opt.autoindent = true	-- Keep the current indent on newline
opt.scrolloff = 8		-- Scroll when cursor is eight lines from screen top or bottom

opt.wrap = false	-- Lines don't wrap

opt.ignorecase = true	-- Ignore case while searching
opt.smartcase = true	-- Mixed cases, assumes case sensitive

opt.cursorline = true	-- Highlight the current cursor line

opt.termguicolors = true	-- Turn on termguicolors
opt.background = "dark"		-- Can be light or dark
opt.signcolumn = "yes"		-- Don't shift text

opt.clipboard:append("unnamedplus")	-- Use system clipboard

opt.splitright = true	-- Split vertically to the right not to the left
opt.splitbelow = true	-- Split horizontally below not on top

opt.showmode = false	-- Don't show mode because we got lualine

opt.mouse = ""	-- Disable mouse support
