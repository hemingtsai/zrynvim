local status, null_ls = pcall(require, "null-ls")
if not status then
  vim.notify("没有找到 null-ls")
  return
end

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
   formatting.prettier,
   formatting.stylua,
   lint.shellcheck,
}

null_ls.setup {
   debug = true,
   sources = sources,
}
