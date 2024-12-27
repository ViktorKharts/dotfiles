-- 1. important
vim.o.compatible = false
vim.o.clipboard = "unnamedplus"

-- 2. movning around, searching and paterns
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true -- override 'ignorecase' if uppercase characters provided in shearch

-- 4. displaying text
vim.o.scr = 20
vim.o.scrolloff = 8
vim.o.sms = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.lz = true

-- 5. syntax, highlighting and spelling
vim.o.cursorcolumn = false
vim.o.cursorline = true
vim.o.hlsearch = false

-- 6. multiple windows
vim.o.signcolumn = "yes" -- draw signcolumn
vim.o.laststatus = 0 -- status line for last window

-- 9. using the mouse
vim.o.mouse = ''

-- 10. messages and info
vim.o.ruler = true

-- 12. editing text
vim.o.completeopt = "menuone,noselect"
vim.o.undofile = true -- auto same undo history

-- 13. tabs and indenting
vim.o.tabstop = 2 -- num of spaces for a tab
vim.o.vartabstop = "2,2,2,2" -- vartabstop
vim.o.sw = 2 -- shiftwidth
vim.o.expandtab = true
vim.o.smartindent = true -- better indentation

-- global vars 
vim.o.updatetime = 200 -- auto write swap file to disk
vim.o.timeoutlen = 300
vim.o.guicursor = ""
vim.o.termguicolors = true
vim.o.pumblend = 10 -- popup menu transparency
vim.o.pumheight = 10 -- max items in the menu
vim.o.sessionoptions = "buffers,tabpages,curdir,winsize" -- mksession items to save
vim.o.splitkeep = "screen" -- keep the text on the same screen line when window resizing
vim.o.splitright = true -- always vsplit to the right

