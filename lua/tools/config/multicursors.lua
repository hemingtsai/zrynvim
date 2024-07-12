 require('multicursors').setup {
    normal_keys = {
        [','] = {
            method = N.clear_others,
            opts = { desc = 'Clear others' },
        },
        ['<C-/>'] = {
            method = function()
                require('multicursors.utils').call_on_selections(function(selection)
                    vim.api.nvim_win_set_cursor(0, { selection.row + 1, selection.col + 1 })
                    local line_count = selection.end_row - selection.row + 1
                    vim.cmd('normal ' .. line_count .. 'gcc')
                end)
            end,
            opts = { desc = 'comment selections' },
        },
    },
}
