-- This Source Code Form is subject to the terms of the Mozilla Public
-- License, v. 2.0. If a copy of the MPL was not distributed with this
-- file, You can obtain one at https://mozilla.org/MPL/2.0/.

return {
    { "<leader>c",  group = "Code manipulation" },
    { "<leader>cf", "<cmd> lua vim.lsp.buf.format() <CR>",         desc = "Format File" },

    { "<leader>cd", "<cmd> lua vim.lsp.buf.hover() <CR>",          desc = "Show Document" },
    { "<leader>cD", "<cmd> lua vim.lsp.buf.definition()<CR>",      desc = "Show Definition" },
    { "<leader>cr", "<cmd>lua vim.lsp.buf.refreences()<CR>",       desc = "Show Refreences" },
    { "<leader>ci", "<cmd> lua vim.lsp.buf.implementation() <CR>", desc = "Show Implementations" },

    { "<leader>cN", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", desc = "Goto Prev. Syntax Error" },
    { "<leader>cn", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", desc = "Goto Next Syntax Error" },
}
