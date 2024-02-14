---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
    ["<F5>"] = {":set list!<CR>", "set list"},
    ["<A-j>"] = {":m +1<CR>", "move line"},
    ["<A-k>"] = {":m -2<CR>", "move line"},
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
