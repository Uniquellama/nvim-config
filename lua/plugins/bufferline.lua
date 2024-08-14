return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	keys = {
		{"<leader>l", "<cmd>BufferLineCycleNext<cr>", desc = "Cycle to next buffer"},
		{"<leader>h", "<cmd>BufferLineCyclePrev<cr>", desc = "Cycle to previous buffer"},
	},
}
