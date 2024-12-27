-- global keymappings
local keymap = vim.keymap.set

-- Remap for dealing with word wrap
keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- Better indent
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- Paste over currently selected text without yanking it
keymap("v", "p", '"_dP')

-- Switch buffer
keymap("n", "<S-h>", "<cmd>bprevious<CR>")
keymap("n", "<S-l>", "<cmd>bnext<CR>")

-- Cancel search highlighting with ESC
keymap("n", "<ESC>", "<cmd>nohlsearch<Bar>:echo<CR>")

-- Move selected line / block of text in visual mode
keymap("x", "K", ":move '<-2<CR>gv-gv")
keymap("x", "J", ":move '>+1<CR>gv-gv")

-- Resize windows 
keymap("n", "<Left>", "<cmd>vertical resize +1<CR>")
keymap("n", "<Right>", "<cmd>vertical resize -1<CR>")
keymap("n", "<Up>", "<cmd>resize -1<CR>")
keymap("n", "<Down>", "<cmd>resize +1<CR>")

-- Center search results
keymap("n", "n", "nzz")
keymap("n", "N", "Nzz")

-- Open file tree
keymap("n", "<leader>-", "<cmd>Oil<CR>", { desc = "Open file tree" })

-- Harpoon
local harpoon=require("harpoon")
harpoon:setup()
keymap("n", "<C-h>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon list all" })
keymap("n", "<C-h>a", function() harpoon:list():add() end, { desc = "Harpoon add to list" })
keymap("n", "<C-h>r", function() harpoon:list():select(1) end, { desc = "Harpoon select first" })
keymap("n", "<C-h>t", function() harpoon:list():select(2) end, { desc = "Harpoon select second" })
keymap("n", "<C-h>y", function() harpoon:list():select(3) end, { desc = "Harpoon select third" })
keymap("n", "<C-h>u", function() harpoon:list():select(4) end, { desc = "Harpoon select fourth" })
keymap("n", "<C-h>p", function() harpoon:list():prev() end, { desc = "Harpoon select previouse" })
keymap("n", "<C-h>n", function() harpoon:list():next() end, { desc = "Harpoon select next" })

-- Undo tree
keymap("n", "<leader>u", "<cmd>lua require('undotree').toggle()<cr>", { desc = "Toggle undo tree" } )

-- Treesitter context
local t_context = require("treesitter-context")
t_context.setup()
keymap("n", "[c", function() t_context.go_to_context(vim.v.count1) end, { silent = true, desc = "Jump to ctx start" })

-- Plugin manager
keymap("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Plugin Manager" })

-- LSP manager
keymap("n", "<leader>m", "<cmd>Mason<cr>", { desc = "Lsp Manager" })

