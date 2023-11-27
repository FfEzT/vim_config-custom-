---@type ChadrcConfig
local M = {}

M.mappings = {
  general = {
    n = {
       ["<F5>"] = {":set list!<CR>", "set list"},
       ["<A-j>"] = {":m +1<CR>", "move line"},
       ["<A-k>"] = {":m -2<CR>", "move line"},
    }
 }
}

M.plugins = "custom.plugins"
M.ui = {
  nvdash = {
    load_on_startup = true,
  },

  theme = "catppuccin",
  theme_toggle = { "catppuccin", "github_dark" },

  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal

    -- default/round/block/arrow (separators work only for "default" statusline theme;
    -- round and block will work for the minimal theme only)
    separator_style = "round",
    overriden_modules = nil,
  },

  tabufline = {
    lazyload = true,
    overriden_modules = nil,
  },
}

vim.opt.relativenumber = true
vim.opt.list = true
vim.opt.listchars = "tab:>>,trail:~,extends:>,precedes:<,space:·"
vim.opt.colorcolumn = "80"
-- vim.opt.foldmethod = "indent"

return M
