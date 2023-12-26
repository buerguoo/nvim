local opt = vim.opt

opt.showcmd = true -- Show command in status line
opt.showmatch = true -- Show matching brackets

opt.ignorecase = true -- Do case insensitive matching 
opt.smartcase = true -- Do smart case matching

opt.incsearch = true -- Incrementral search
opt.hidden = true -- Hide buffers when they are abandoned
opt.mouse:append("a") -- Enable mouse usage (all modes)
opt.swapfile = false -- Do not generate swap files

opt.number = true -- Show lines number
opt.cursorline = true -- show the current line
opt.ruler = true -- Open status bar rule

opt.shiftwidth = 2 -- set << and >> width equals 2
opt.softtabstop = 2 -- Make the backspace delete 2 space
opt.tabstop = 2 -- set the tab length 2

opt.backup = false -- cover the file and do not copy it
opt.autochdir = true -- change the current dir as the current file dir
opt.hlsearch = true -- Show the highlight when search
opt.errorbells = false -- Close error bells 
opt.laststatus = 2 -- Show status line
opt.cmdheight = 1 -- Set command line is 1 

opt.foldenable = true -- Set fold
opt.foldmethod = "syntax" -- Set syntax fold
opt.foldlevel = 1 -- Set fold level equal 1

opt.clipboard:append("unnamedplus") -- system clipboard

opt.splitright = true -- new window in right
opt.splitbelow = true -- new window in below

-- apprence 
opt.termguicolors = false
opt.signcolumn = "yes"

-- themes
vim.cmd[[colorscheme tokyonight-night]]
-- vim.cmd 'colorscheme material-oceanic'
