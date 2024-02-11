return {
  "akinsho/bufferline.nvim",
  version = "4.5.0",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup({})

  vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', default_opts)
  vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', default_opts)
  vim.keymap.set('n', '<leader>cl', ':BufferLineCloseOthers<CR>', default_opts)
  end
}
