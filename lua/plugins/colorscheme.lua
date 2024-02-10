return {
	"bluz71/vim-nightfly-guicolors", --Цветная схема
	priority=1000,
	config=function()
		vim.cmd([[colorscheme nightfly]])
	end,
}
