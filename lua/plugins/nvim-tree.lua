return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
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
    local api = require("nvim-tree.api")
    local function opts(desc)
      return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end
    vim.keymap.set("n", "<leader>e", ":NvimTreeRefresh<CR>:NvimTreeToggle<CR>") -- toggle file explorer
    vim.keymap.set("n", "<leader>r", ":NvimTreeFindFile<CR>")                 -- find opened file in tree
    vim.keymap.set("n", "<leader>rc", ":NvimTreeCollapse<CR>")                -- collapse tree
    vim.keymap.set("n", "<leader>re", api.tree.expand_all, opts("Expand All")) -- Expand All
    vim.keymap.set("n", "<leader>ra", api.fs.copy.absolute_path, opts("Copy Absolute Path"))
    vim.keymap.set("n", "<leader>rh", api.tree.toggle_hidden_filter, opts("Toggle Filter: Dotfiles"))
  end,
}
