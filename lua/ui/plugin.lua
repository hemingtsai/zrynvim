-- This Source Code Form is subject to the terms of the Mozilla Public
-- License, v. 2.0. If a copy of the MPL was not distributed with this
-- file, You can obtain one at https://mozilla.org/MPL/2.0/.

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
