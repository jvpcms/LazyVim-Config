-- Move selected section
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Add new line below
vim.keymap.set("n", "J", "o<Esc>k")
vim.keymap.set("n", "U", "O<Esc>j")

-- Keep selection after indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Half-page jump keeps cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep cursor in the middle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste from system's clipboard with p and P
vim.keymap.set("n", "p", '"+p')
vim.keymap.set("n", "P", '"+P')

-- Use the system's clipboard on yank
vim.keymap.set({ "n", "v" }, "y", '"+y')
vim.keymap.set("n", "Y", '"+Y')

-- Use the system's clipboard on x command
vim.keymap.set("v", "x", '"+x')
vim.keymap.set("n", "X", '"+X')

-- Use void register to preserve yank buffer in d and p commands
vim.keymap.set({ "n", "v" }, "d", '"_d')
vim.keymap.set("n", "D", '"_D')
vim.keymap.set("n", "dd", '"_dd')

vim.keymap.set("x", "p", '"_d"+p')
vim.keymap.set("x", "P", '"_d"+P')

-- Replace current word
vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Search and replace
vim.keymap.set("n", "<leader>rs", [[:%s/]])

-- Clear search
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { silent = true })

-- Search selected
vim.keymap.set("v", "<leader>ss", [["zy/\V<C-R>z<CR>]], { noremap = true, silent = true, expr = false })

-- Window navigation
vim.keymap.set("n", "<leader>wv", "<C-w>v")
vim.keymap.set("n", "<leader>ws", "<C-w>s")
vim.keymap.set("n", "<leader>wx", "<C-w>x")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Tmux session navigation
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
