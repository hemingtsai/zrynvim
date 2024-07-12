local wk = require("which-key")

wk.register({
    f = {
        name = "File Control",
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        n = { "<cmd>new<cr>", "Create a new File" },
    },
    q = {
        name = "Exit",
        c = { "Cancel" },
        s = { "<cmd>wqall<cr>", "Save and quit" },
        d = { "<cmd>qall!<cr>", "Quit and don't save" },
    },
    g = {
        name = "Go..",
        h = { "<cmd>0<CR>", "First line" },
        t = { "<cmd>$<CR>", "Last line" },
    },
    c = {
        name = "Code Features",
        d = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Show Documents" },
        D = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Go to definition" },
        i = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Go to implementation" },
        r = { "<cmd>lua vim.lsp.buf.refreences()<CR>", "Go to refreences" },
        f = { "<cmd>lua vim.lsp.buf.format({ bufnr = bufnr })<CR>", "Format file" },
        R = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename Symbol" },
    },
    t = {
        name = "Terminal",
        f = {
            '<cmd>FloatermNew --height=0.6 --width=0.4 --wintype=float --name="Float Terminal" --position=center<CR>',
            "Open float terminal",
        },
        t = { "<cmd>ToggleTerm<CR>", "Toggle Terminal" },
    },
    G = {
        name = "Git",
        f = { "<cmd>Telescope git_commits<CR>", "Find Commits" },
        l = {
            "<cmd>FloatermNew --height=0.6 --width=0.4 --wintype=float --name=Lazygit --position=center lazygit<CR>",
            "Lazygit",
        },
    },
    F = {
        name = "Find",
        f = { "<cmd>Telescope fd<CR>", "Find file" },
    },
}, { prefix = "<leader>" })
