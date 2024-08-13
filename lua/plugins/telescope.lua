return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    event = "VeryLazy",
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-telescope/telescope-ui-select.nvim", opts = {} }, --* It sets vim.ui.select to telescope *--
		},
		config = function()
			require("telescope").setup({
				extensions = { ["ui-select"] = { require("telescope.themes").get_dropdown({}) } },
				pickers = {
					colorscheme = { enable_preview = true },
					git_commits = { theme = "dropdown" }, -- Dropdown shows a preview window
					live_grep = { theme = "dropdown" },
					git_files = { theme = "dropdown" },
					diagnostics = { theme = "dropdown" },
					buffers = { theme = "dropdown" },
					oldfiles = { theme = "dropdown" },
					treesitter = { theme = "dropdown" },
					quickfix = { theme = "dropdown" },
					find_files = {
						theme = "dropdown",
						find_command = { "rg", "--files", "--hidden" },
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,

    keys = {
	{"<leader>/", false},
	{"<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
	{"<leader>fc", "<cmd>Telescope colorscheme<cr>", desc = "Open colour picker"},
	{"<leader>c", "<cmd>Telescope commands<cr>", desc = "Open command list"},
	{"<leader>b", "<cmd>Telescope buffers<cr>", desc = "Select buffer"},
        {"<leader>fp",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",i
	},
    },
}
