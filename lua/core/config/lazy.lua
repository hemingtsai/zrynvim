-- This Source Code Form is subject to the terms of the Mozilla Public
-- License, v. 2.0. If a copy of the MPL was not distributed with this
-- file, You can obtain one at https://mozilla.org/MPL/2.0/.

return {
    defaults = {
        lazy = false, -- should plugins be lazy-loaded?
        version = nil, -- always use the latest git commit
        cond = nil, ---@type boolean|fun(self:LazyPlugin):boolean|nil
    },
    spec = nil, ---@type LazySpec
    local_spec = true,                                      -- load project specific .lazy.lua spec files. They will be added at the end of the spec.
    lockfile = vim.fn.stdpath("config") .. "/lazy-lock.json", -- lockfile generated after running update.
    ---@type number? limit the maximum amount of concurrent tasks
    concurrency = jit.os:find("Windows") and (vim.uv.available_parallelism() * 2) or nil,
    git = {
        log = { "-8" }, -- show the last 8 commits
        timeout = 120, -- kill processes that take more than 2 minutes
        url_format = "git@github.com:%s.git", -- Use ssh to get plugin repo
        filter = true,
    },
    pkg = {
        enabled = true,
        cache = vim.fn.stdpath("state") .. "/lazy/pkg-cache.lua",
        versions = true, -- Honor versions in pkg sources
        -- the first package source that is found for a plugin will be used.
        sources = {
            "lazy",
            "rockspec",
            "packspec",
        },
    },
    rocks = {
        root = vim.fn.stdpath("data") .. "/lazy-rocks",
        server = "https://nvim-neorocks.github.io/rocks-binaries/",
    },
    dev = {
        ---@type string | fun(plugin: LazyPlugin): string directory where you store your local plugin projects
        path = "~/projects",
        ---@type string[] plugins that match these patterns will use your local versions instead of being fetched from GitHub
        patterns = {}, -- For example {"folke"}
        fallback = false, -- Fallback to git when local plugin doesn't exist
    },
    install = {
        -- install missing plugins on startup. This doesn't increase startup time.
        missing = true,
        -- try to load one of these colorschemes when starting an installation during startup
        colorscheme = { "habamax" },
    },
    ui = {
        -- a number <1 is a percentage., >1 is a fixed size
        size = { width = 0.8, height = 0.8 },
        wrap = true, -- wrap the lines in the ui
        -- The border to use for the UI window. Accepts same border values as |nvim_open_win()|.
        border = "none",
        -- The backdrop opacity. 0 is fully opaque, 100 is fully transparent.
        backdrop = 60,
        title = nil, ---@type string only works when border is not "none"
        title_pos = "center", ---@type "center" | "left" | "right"
        -- Show pills on top of the Lazy window
        pills = true, ---@type boolean
        icons = {
            cmd = " ",
            config = "",
            event = " ",
            favorite = " ",
            ft = " ",
            init = " ",
            import = " ",
            keys = " ",
            lazy = "󰒲 ",
            loaded = "●",
            not_loaded = "○",
            plugin = " ",
            runtime = " ",
            require = "󰢱 ",
            source = " ",
            start = " ",
            task = "✔ ",
            list = {
                "●",
                "➜",
                "★",
                "‒",
            },
        },
        browser = nil, ---@type string?
        throttle = 20, -- how frequently should the ui process render events
        custom_keys = {

            ["<localleader>l"] = {
                function(plugin)
                    require("lazy.util").float_term({ "lazygit", "log" }, {
                        cwd = plugin.dir,
                    })
                end,
                desc = "Open lazygit log",
            },

            ["<localleader>t"] = {
                function(plugin)
                    require("lazy.util").float_term(nil, {
                        cwd = plugin.dir,
                    })
                end,
                desc = "Open terminal in plugin dir",
            },
        },
    },
    diff = {
        cmd = "git",
    },
    checker = {
        -- automatically check for plugin updates
        enabled = false,
        concurrency = nil, ---@type number? set to 1 to check for updates very slowly
        notify = true,    -- get a notification when new updates are found
        frequency = 3600, -- check for updates every hour
        check_pinned = false, -- check for pinned packages that can't be updated
    },
    change_detection = {
        -- automatically check for config file changes and reload the ui
        enabled = true,
        notify = true, -- get a notification when changes are found
    },
    performance = {
        cache = {
            enabled = true,
        },
        reset_packpath = true, -- reset the package path to improve startup time
        rtp = {
            reset = true,  -- reset the runtime path to $VIMRUNTIME and your config directory
            ---@type string[]
            paths = {},    -- add any custom paths here that you want to includes in the rtp
            ---@type string[] list any plugins you want to disable here
            disabled_plugins = {
                -- "gzip",
                -- "matchit",
                -- "matchparen",
                -- "netrwPlugin",
                -- "tarPlugin",
                -- "tohtml",
                -- "tutor",
                -- "zipPlugin",
            },
        },
    },
    readme = {
        enabled = true,
        root = vim.fn.stdpath("state") .. "/lazy/readme",
        files = { "README.md", "lua/**/README.md" },
        skip_if_doc_exists = true,
    },
    state = vim.fn.stdpath("state") .. "/lazy/state.json", -- state info for checker and other things
    profiling = {
        loader = false,
        require = false,
    },
}
