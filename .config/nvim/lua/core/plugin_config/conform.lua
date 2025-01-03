require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		-- Conform will run multiple formatters sequentially
		python = { "isort", "black" },
		-- Use a sub-list to run only the first available formatter
		javascript = { { "prettier", stop_after_first = true } },
		typescript = { { "prettier", stop_after_first = true } },
		typescriptreact = { { "prettier", stop_after_first = true } },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
})
