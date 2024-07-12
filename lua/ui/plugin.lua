return {
    -- the colorscheme should be available when starting Neovim
    {
        "folke/tokyonight.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            -- load the colorscheme here
            vim.cmd([[colorscheme tokyonight]])
        end,
    },
    {
        "glepnir/dashboard-nvim"
    },
    {
        "akinsho/bufferline.nvim",
        dependencies = {
            "kyazdani42/nvim-web-devicons",
            "moll/vim-bbye" 
        }
    },
    { 
        "nvim-lualine/lualine.nvim", 
        dependencies = {
            "kyazdani42/nvim-web-devicons" 
        }
    },
    {
        "arkav/lualine-lsp-progress"
    },
}
