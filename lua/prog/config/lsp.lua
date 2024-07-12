local status, mason = pcall(require, "mason")
if not status then
  vim.notify("Cannot find mason")
  return
end

local status, mason_config = pcall(require, "mason-lspconfig")
if not status then
  vim.notify("Cannot find mason-lspconfig")
  return
end

local status, lspconfig = pcall(require, "lspconfig")
if not status then
  vim.notify("Cannot find lspconfig")
  return
end

mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

mason_config.setup({
    -- A list of servers to automatically install if they're not already installed
    ensure_installed = { 'clangd', 'lua_ls', 'rust_analyzer',"tsserver","vtsls","volar" },
})


