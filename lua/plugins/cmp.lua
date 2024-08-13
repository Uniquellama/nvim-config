return {
    'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip',
		{
			'saadparwaiz1/cmp_luasnip',
			dependencies = { "rafamadriz/friendly-snippets" },
		},
		{ "hrsh7th/cmp-nvim-lsp", event = { "InsertEnter", "CmdlineEnter" } }, -- neovim's built-in LSP
		{ "hrsh7th/cmp-buffer", event = { "InsertEnter", "CmdlineEnter" } }, -- text inside the buffer
		{ "hrsh7th/cmp-cmdline", event = { "InsertEnter", "CmdlineEnter" } }, -- commands and their args
		{ "hrsh7th/cmp-nvim-lua", event = { "InsertEnter", "CmdlineEnter" } }, -- nvim lua api
		{ "dmitmel/cmp-cmdline-history", event = { "InsertEnter", "CmdlineEnter" } }, -- cmdline history
		{ "FelipeLema/cmp-async-path", event = { "InsertEnter", "CmdlineEnter" } }, -- file systems paths

}}
