return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {"nvim-tree/nvim-web-devicons"},
	config = function()
		local nvimtree = require("nvim-tree")
		-- disable netrw at the very start of your init.lua
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
		nvimtree.setup({
	  sort = {
	    sorter = "case_sensitive",
	  },
	  view = {
	    width = 30,
	  },
	  renderer = {
	    group_empty = true,
	  },
	  filters = {
	    dotfiles = true,
	  },
	})

	-- set keymaps
	local keymap = vim.keymap
	keymap.set("n", "<F4>", ":NvimTreeRefresh<CR>:NvimTreeToggle<CR>") -- toggle fire explorer

	end,
}
