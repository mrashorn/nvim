local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.colorcolumn = "80"
opt.guicursor = ""
opt.hidden = true
opt.wrap = false
opt.incsearch = true
opt.scrolloff = 8
opt.termguicolors = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.mouse = "a"
opt.completeopt = { "menu", "menuone", "noselect" }

-- Colorscheme
vim.cmd("colorscheme gruvbox")
vim.g.gruvbox_contrast_dark = "hard"

