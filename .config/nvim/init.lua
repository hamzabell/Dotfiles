require("core.keymaps")
require("core.plugins")
require("core.plugin_config")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})

local hardmode = true
if hardmode then
	-- Show an error message if a disabled key is pressed
	local msg = [[<cmd>echohl Error | echo "KEY DISABLED" | echohl None<CR>]]

	-- Disable arrow keys in insert mode with a styled message
	-- vim.api.nvim_set_keymap('i', '<Up>', '<C-o>' .. msg, { noremap = true, silent = false })
	-- vim.api.nvim_set_keymap('i', '<Down>', '<C-o>' .. msg, { noremap = true, silent = false })
	-- vim.api.nvim_set_keymap('i', '<Left>', '<C-o>' .. msg, { noremap = true, silent = false })
	-- vim.api.nvim_set_keymap('i', '<Right>', '<C-o>' .. msg, { noremap = true, silent = false })
	-- 	vim.api.nvim_set_keymap('i', '<Del>', '<C-o>' .. msg, { noremap = true, silent = false })
	-- vim.api.nvim_set_keymap('i', '<BS>', '<C-o>' .. msg, { noremap = true, silent = false })

	-- Disable arrow keys in normal mode with a styled message
	-- vim.api.nvim_set_keymap('n', '<Up>', msg, { noremap = true, silent = false })
	-- vim.api.nvim_set_keymap('n', '<Down>', msg, { noremap = true, silent = false })
	-- vim.api.nvim_set_keymap('n', '<Left>', msg, { noremap = true, silent = false })
	-- vim.api.nvim_set_keymap('n', '<Right>', msg, { noremap = true, silent = false })
	vim.api.nvim_set_keymap("n", "<BS>", msg, { noremap = true, silent = false })
end

local dap = require("dap")
dap.adapters.godot = {
	type = "server",
	host = "127.0.0.1",
	port = 6006,
}

dap.configurations.gdscript = {
	{
		type = "godot",
		request = "launch",
		name = "Launch scene",
		project = "${workspaceFolder}",
		launch_scene = true,
	},
}

vim.api.nvim_create_user_command("Breakpoint", "lua require'dap'.toggle_breakpoint()", {})
vim.api.nvim_create_user_command("Continue", "lua require'dap'.continue()", {})
vim.api.nvim_create_user_command("StepOver", "lua require'dap'.step_over()", {})
vim.api.nvim_create_user_command("StepInto", "lua require'dap'.step_into()", {})
vim.api.nvim_create_user_command("REPL", "lua require'dap'.repl.open()", {})
