-- VIM OPTIONS
local opt = vim.opt

-- smaller tabs
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = false

opt.cursorline = true
opt.signcolumn = "yes"

opt.number = true
opt.relativenumber = true
opt.scrolloff = 5
opt.conceallevel = 1

opt.wrap = true
opt.breakindent = true
opt.showbreak = string.rep(" ", 3) -- Make it so that long lines wrap smartly
opt.linebreak = true
opt.signcolumn = "yes"
opt.autoindent = true

opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldlevel = 99

opt.guicursor = "n-v-c:block-blinkwait1000-blinkon500-blinkoff500,i:ver25-blinkwait1000-blinkon500-blinkoff500"

opt.updatetime = 200
