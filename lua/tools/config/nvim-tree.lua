local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
    vim.notify("Cannot find nvim-tree")
  return
end

nvim_tree.setup({
    update_cwd = true,
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
  
    filters = {
        dotfiles = true,
        custom = { 'node_modules' },
    },
    view = {
        width = 40,
        side = 'left',
        relativenumber = false,
        signcolumn = 'yes',
    },
    actions = {
        open_file = {
            resize_window = true,
        }
    },
    system_open = {
        cmd = 'open',
    },
})
-- auto close
vim.cmd([[
  autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]])

