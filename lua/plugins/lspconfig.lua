return {
	"neovim/nvim-lspconfig",
	dependencies = { --* General grammar / syntax highlighting dependencies *--
				"nvim-treesitter/nvim-treesitter",
				build = ":TSUpdate",
				config = function()
					---@diagnostic disable-next-line: missing-fields
					require("nvim-treesitter.configs").setup({
						matchup = { enable = true }, -- Needed for vim matchup
						indent = { enable = true }, -- Indentation based on treesitter for the = operator
						ensure_installed = {
							"json",
							"javascript",
							"yaml",
							"html",
							"css",
							"markdown",
							"markdown_inline",
							"bash",
							"lua",
							"toml",
							"vim",
							"dockerfile",
							"gitignore",
							"gitcommit",
							"query",
							"vimdoc",
							"regex",
							"c",
							"cpp",
							"asm",
							"hyprlang",
							"python",
							"xml",
							"make",
						},
						incremental_selection = { -- Use <C-Space> to incrementally select text
							enable = true,
							keymaps = {
								init_selection = "<C-space>",
								node_incremental = "<C-space>",
								scope_incremental = false,
								node_decremental = "<bs>",
							},
						},
					})
				end,
			},

			--* Mason LSP installer *--
			{ "williamboman/mason.nvim" }, -- LSP/formatter/linter/debugger installer
			{ "williamboman/mason-lspconfig.nvim" }, -- Makes Mason easier to use with lspconfig
			{ "jay-babu/mason-nvim-dap.nvim" }, -- Auto install debug adapters from config
			{ "rshkarin/mason-nvim-lint" }, -- Install linters and formatters declaratively (like nix if you want)

}
