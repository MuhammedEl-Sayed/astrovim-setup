-- lua/plugins/smart-open.lua
---@type LazySpec
return {
  "danielfalk/smart-open.nvim",
  branch = "0.2.x",
  dependencies = {
    "kkharji/sqlite.lua",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    { "nvim-telescope/telescope-fzy-native.nvim" },
  },
  config = function()
    require("telescope").load_extension("smart_open")
    vim.keymap.set("n", "<leader>fo", "<cmd>Telescope smart_open<cr>", { desc = "Smart open files" })
  end,
}
