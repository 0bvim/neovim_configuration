-- change command explorer mode
vim.cmd("let g:netrw_liststyle = 3")

-- variable to short call
local opt = vim.opt

-- set relative number
opt.relativenumber = true

opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- when mixed case assume case sensitive

opt.cursorline = true
opt.termguicolors = true
opt.background = "dark" -- colorscheme that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text does't shift

-- backspace
opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus") -- use system clipboard

-- split windows
opt.splitright = true
opt.splitbelow = true

