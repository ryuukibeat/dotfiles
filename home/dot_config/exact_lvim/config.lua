-- general configs
require("latipun.options").config()

lvim.log.level = "warn"
lvim.transparent_window = true
lvim.colorscheme = "catppuccin"

-- LunarVim builtin configs
require("latipun.lvim_builtin").config()
require("latipun.plugins.lualine").config()
require("latipun.plugins.telescope").config()
require("latipun.plugins.bufferline").config()
require("latipun.plugins.indent_blankline").config()

-- Keybindings
require("latipun.keybindings").config()

-- LSP
local code_actions = require("lvim.lsp.null-ls.code_actions")
local formatters = require("lvim.lsp.null-ls.formatters")
local linters = require("lvim.lsp.null-ls.linters")

lvim.lsp.diagnostics.virtual_text = false
lvim.lsp.buffer_mappings.normal_mode["gp"] = {
  function()
    require("latipun.peek").Peek("definition")
  end,
  "Peek definition",
}
vim.list_extend(
  lvim.lsp.automatic_configuration.skipped_servers,
  { "sumneko_lua" }
)

code_actions.setup({
  { name = "eslint_d" },
  { name = "shellcheck" },
})

formatters.setup({
  { name = "prettierd" },
  { command = "shfmt", args = { "-i", "2", "-ci" } },
})

linters.setup({
  { name = "eslint_d" },
  { name = "shellcheck" },
  { name = "zsh" },
})

-- Plugins
require("latipun.plugins").config()

-- Autocommands
require("latipun.autocommands").config()

-- reload packer compiled without restarting nvim
require("packer").init({ auto_reload_compiled = true })
