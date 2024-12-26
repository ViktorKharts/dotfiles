require("config.lazy")
require("mason").setup()
require("Comment").setup()
require("nvim-ts-autotag").setup({})

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
vim.o.splitright = true -- always split to the right


-- global keymappings
local keymap = vim.keymap

-- Oil file tree
keymap.set("n", "<leader>-", "<cmd>Oil<CR>", { desc = "Open file tree" })

-- Harpoon
local harpoon=require("harpoon")
harpoon:setup()
keymap.set("n", "<C-h>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon list all" })
keymap.set("n", "<C-h>a", function() harpoon:list():add() end, { desc = "Harpoon add to list" })
keymap.set("n", "<C-h>r", function() harpoon:list():select(1) end, { desc = "Harpoon select first" })
keymap.set("n", "<C-h>t", function() harpoon:list():select(2) end, { desc = "Harpoon select second" })
keymap.set("n", "<C-h>y", function() harpoon:list():select(3) end, { desc = "Harpoon select third" })
keymap.set("n", "<C-h>u", function() harpoon:list():select(4) end, { desc = "Harpoon select fourth" })
keymap.set("n", "<C-h>p", function() harpoon:list():prev() end, { desc = "Harpoon select previouse" })
keymap.set("n", "<C-h>n", function() harpoon:list():next() end, { desc = "Harpoon select next" })

-- Undo tree
keymap.set("n", "<leader>u", "<cmd>lua require('undotree').toggle()<cr>", { desc = "Toggle undo tree" } )

-- Treesitter context
local t_context = require("treesitter-context")
t_context.setup()
keymap.set("n", "[c", function() t_context.go_to_context(vim.v.count1) end, { silent = true, desc = "Jump to ctx start" })

-- Which key
local wk = require("which-key")
wk.add({
	{ "<C-h>", group = "Harpoon" },
})

vim.keymap.set("n", "<leader>z", "<cmd>:Lazy<cr>", { desc = "Plugin Manager" })

-- Useful functions
vim.api.nvim_create_autocmd("FileType", {
	pattern = "*",
	callback=function() -- prevent from commenting new line after o, O, and Enter in i mode
		vim.opt_local.formatoptions:remove({'c', 'r', 'o'})
	end,
})

local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	pattern = "*",
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
})

