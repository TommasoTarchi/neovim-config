-- general settings


-- line numebr
vim.opt.nu = true

-- indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- command mode search
--vim.opt.hlsearch = false
vim.opt.incsearch = true

-- never less than 8 lines below or above the cursor
vim.opt.scrolloff = 8

-- set leader key
vim.g.mapleader = " "

-- disable mouse by default
vim.opt.mouse = nil

-- change key to switch windows; same syntax can be used for any command:
-- the first argument tells you which is the mode in which you want to
-- use the remapped key (in this case "normal" mode), the second is the 
-- new key and the third is the old one
vim.api.nvim_set_keymap('n', '<C-q>', '<C-w><C-w>', { noremap = true })

-- utomatically triggers the NvimTree when you open neovim (same syntax can be used for any command)
--vim.cmd("autocmd VimEnter * :NvimTreeToggle")

-- Remap NvimTreeToggle to T
vim.api.nvim_set_keymap('n', '<leader>t', ':T<CR>', { noremap = true })
-- Define T command to toggle NvimTree
vim.cmd([[command! T :NvimTreeToggle]])
