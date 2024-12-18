-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- empty setup using defaults
require("nvim-tree").setup({
	view = { adaptive_size = true }
})


vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
