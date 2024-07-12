return {
    {
        "kyazdani42/nvim-tree.lua",
        dependencies = {
            "kyazdani42/nvim-web-devicons",
        },
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },

    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opt = {},
    },
    {
        "ahmedkhalf/project.nvim",
    },
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = true,
    },
    {
        "voldikss/vim-floaterm",
    },
    {
        "smoka7/multicursors.nvim",
        event = "VeryLazy",
        dependencies = {
            "nvimtools/hydra.nvim",
        },
        opts = {},
        cmd = { "MCstart", "MCvisual", "MCclear", "MCpattern", "MCvisualPattern", "MCunderCursor" },
        keys = {
            {
                mode = { "v", "n" },
                "<Leader>m",
                "<cmd>MCstart<cr>",
                desc = "Create a selection for selected text or word under the cursor",
            },
        },
    },
}
