-- This Source Code Form is subject to the terms of the Mozilla Public
-- License, v. 2.0. If a copy of the MPL was not distributed with this
-- file, You can obtain one at https://mozilla.org/MPL/2.0/.

-- The key map settings of FindCmdline
vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', { noremap = true })

return {
    { "<leader>m", group = "Viedit", desc = "Multiple Cursor", icon = '󰗧' },
    { "<leader>mt", "<cmd>lua require(\"viedit\").toggle_all()<CR>", desc = "Toggle Viedit Mode" },
    { "<leader>mr", '<cmd>lua require("viedit").reload()<CR>', desc = "Reload viedit" },

    { "<leader>t", group = "Terminal" },
    { "<leader>tt", '<cmd>lua require("FTerm").toggle()<CR>', desc = "Open Float Terminal" },
    { "<leader>tn", '<cmd>ToggleTerm<CR>', desc = "Open Normal Terminal" },

    { "<leader>s", group = "Search" },
    { "<leader>sa", '<cmd>SearchBoxMatchAll<CR>', desc = "Search but match all" , icon='󰾹'},
    { "<leader>sr", '<cmd>SearchBoxReplace<CR>', desc = "Search and replace", icon = "" },
    { "<leader>ss", '<cmd>SearchBoxSimple<CR>', desc = "Only Search" }
}
