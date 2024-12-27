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

