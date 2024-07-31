function ResetColors(color)
	color = color or 'catppuccin'
	vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, 'Normal', { bg = '#1e1e2e' })
	-- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

ResetColors()
