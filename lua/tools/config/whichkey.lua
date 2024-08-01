-- This Source Code Form is subject to the terms of the Mozilla Public
-- License, v. 2.0. If a copy of the MPL was not distributed with this
-- file, You can obtain one at https://mozilla.org/MPL/2.0/.

local wk = require("which-key")

wk.add({
    require("prog.config.keymaps"),
    require("tools.config.keymaps"),
})
