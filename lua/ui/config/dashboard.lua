-- This Source Code Form is subject to the terms of the Mozilla Public
-- License, v. 2.0. If a copy of the MPL was not distributed with this
-- file, You can obtain one at https://mozilla.org/MPL/2.0/.

local status, db = pcall(require, "dashboard")
if not status then
    vim.notify("Cannot find dashboard")
    return
end

db.setup({

    theme = "doom",
    config = {
        header = {
            [[                                                          ]],
            [[                                                          ]],
            [[███████╗██████╗ ██╗   ██╗███╗   ██╗██╗   ██╗██╗███╗   ███╗]],
            [[╚══███╔╝██╔══██╗╚██╗ ██╔╝████╗  ██║██║   ██║██║████╗ ████║]],
            [[  ███╔╝ ██████╔╝ ╚████╔╝ ██╔██╗ ██║██║   ██║██║██╔████╔██║]],
            [[ ███╔╝  ██╔══██╗  ╚██╔╝  ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
            [[███████╗██║  ██║   ██║   ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║]],
            [[╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝]],
            [[                                                          ]],
            [[                                                          ]],
        }, --your header
        center = {
            {
                icon = "  ",
                desc = "Projects                            ",
                action = "Telescope projects",
            },
            {
                icon = "  ",
                desc = "Recently files                      ",
                action = "Telescope oldfiles",
            },
            {
                icon = "  ",
                desc = "Edit keybindings                    ",
                action = "edit ~/.config/nvim/lua/config/keymaps.lua",
            },
            {
                icon = "  ",
                desc = "Edit Projects                       ",
                action = "edit ~/.local/share/nvim/project_nvim/project_history",
            },
        },
        footer = {
            [[ May heaven be bug-free. ]],
        }, --your footer
    },
})
