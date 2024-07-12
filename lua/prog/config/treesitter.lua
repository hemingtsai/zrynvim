local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    vim.notify("Cannot find nvim-treesitter")
    return
end

treesitter.setup({
  -- install language parser
  -- type `:TSInstallInfo` to show support language of all
  ensure_installed = { 
    "json", "html", "css", "vim", "lua", "javascript", "typescript", "tsx", "cpp", "c"
    },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
})

