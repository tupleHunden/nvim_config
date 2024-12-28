return {
	"comfysage/evergarden",
	priority = 1000,
	opts = {
		transparent_backgrond = true,
		contrast_dark = "hard",
	},
	init = function()
		vim.o.background = "dark"
		vim.cmd.colorscheme("evergarden")
		vim.cmd.hi("Comment gui=none")
	end,
}
