vim.opt.termguicolors = true

local fm = require('fluoromachine')

function SetColor(color)
	color = color or 'fluoromachine'
	fm.setup({
		glow = true,
		theme = 'fluoromachine',
--		transparent = false,
--		brightness = 0.90
	})

	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
	vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
	vim.api.nvim_set_hl(0, 'ColorColumn', { bg = '#330000' })
end

SetColor()
