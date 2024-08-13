return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
	{"<leader>t", "<cmd>NvimTreeOpen<cr>", desc = "Open file-tree" },
	{"<leader>r", "<cmd>NvimTreeClose<cr>", desc = "Close file-tree" },
	},
  config = function()
    require("nvim-tree").setup {}
  end,
}
