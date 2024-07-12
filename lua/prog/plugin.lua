return {
    {
        "williamboman/mason.nvim"
    },
    -- Vscode-like pictograms
	{
		"onsails/lspkind.nvim",
		event = { "VimEnter" },
	},
	-- Auto-completion engine
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"onsails/lspkind.nvim",
			"hrsh7th/cmp-nvim-lsp", -- lsp auto-completion
			"hrsh7th/cmp-buffer", -- buffer auto-completion
			"hrsh7th/cmp-path", -- path auto-completion
			"hrsh7th/cmp-cmdline", -- cmdline auto-completion
            "jose-elias-alvarez/null-ls.nvim", -- file auto format

		},
		config = function()
			require("prog.config.nvim-cmp")
		end,
	},
	-- Code snippet engine
	{
		"L3MON4D3/LuaSnip",
	},
	{
		"williamboman/mason-lspconfig.nvim",
	},
	{
		"neovim/nvim-lspconfig",
	},
    {
        "nvim-treesitter/nvim-treesitter",
    },
    {
        "tami5/lspsaga.nvim"
    },
}
