vim.g.mapleader = " "
vim.g.maploclleader = " "

vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2

vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true

vim.keymap.set("n", "<leader>v", ":nohlsearch<CR>")
vim.keymap.set("n", "<C-p>", ":Files<CR>")
vim.keymap.set("n", "<leader><leader>", ":RG<CR>")
vim.keymap.set("n", ",w", ":wqa!<CR>")
vim.keymap.set("n", "<leader>s", ":w!<CR>")
vim.keymap.set("n", ",q", ":qa!<CR>")
vim.keymap.set("n", ",d", ":bd!<CR>")
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<C-v>", "<C-w>v")
vim.keymap.set("n", "<C-s>", "<C-w>s")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "L", "Lzz")
vim.keymap.set("n", "M", "Mzz")
vim.keymap.set("n", "H", "Hzz")
vim.keymap.set("n", "<leader>m", "ma")
vim.keymap.set("n", "<leader>d", "d'a")
vim.keymap.set("n", "<leader>y", "y'a")
vim.keymap.set("n", "<leader>g", "gc'a")

-- copy text to clipboard
vim.keymap.set("n", ",y", '"+y')
vim.keymap.set("n", ",ya", ",y'a")
vim.keymap.set("n", ",p", '"+p')
vim.keymap.set("v", ",y", '"+y')
vim.keymap.set("v", ",p", '"+p')

-- dismiss notifications
vim.keymap.set("n", "<leader>q", "<CMD>lua require('notify').dismiss()<CR>")

local bufnr = vim.api.nvim_get_current_buf()
vim.api.nvim_buf_set_option(bufnr, "swapfile", false)

vim.opt.swapfile = false

vim.api.nvim_set_keymap("n", "<leader>n", ":ASToggle<CR>", {})

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "s", function()
	require("flash").jump()
end, { desc = "Flash" })

vim.opt.mouse = ""
vim.opt.mousescroll = "ver:0,hor:0"

require("nvim_comment").setup()
