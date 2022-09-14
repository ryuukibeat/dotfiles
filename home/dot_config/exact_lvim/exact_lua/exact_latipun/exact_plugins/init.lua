local M = {}

M.config = function()
  -- Additional Plugins
  lvim.plugins = {
    {
      "catppuccin/nvim",
      as = "catppuccin",
      run = ":CatppuccinCompile",
      config = function()
        require("latipun.plugins.catppuccin").config()
      end,
    },
    {
      "phaazon/hop.nvim",
      tag = "*",
      event = "BufRead",
      config = function()
        require("latipun.plugins.hop").config()
      end,
    },
    {
      "NvChad/nvim-colorizer.lua",
      event = "BufReadPre",
      config = function()
        require("latipun.plugins.colorizer").config()
      end,
    },
    {
      "andweeb/presence.nvim",
      config = function()
        require("latipun.plugins.presence").config()
      end,
    },
    {
      "olimorris/persisted.nvim",
      setup = function()
        require("latipun.plugins.persisted").keybindings()
      end,
      config = function()
        require("latipun.plugins.persisted").config()
      end,
    },
    {
      "stevearc/dressing.nvim",
      event = "BufWinEnter",
      config = function()
        require("latipun.plugins.dressing").config()
      end,
    },
    {
      "nathom/filetype.nvim",
      config = function()
        require("latipun.plugins.filetype").config()
      end,
    },
    {
      "sindrets/diffview.nvim",
      setup = function()
        require("latipun.plugins.diffview").keybindings()
      end,
      config = function()
        require("latipun.plugins.diffview").config()
      end,
    },
    {
      "kevinhwang91/nvim-bqf",
      tag = "*",
      event = "BufRead",
      config = function()
        require("latipun.plugins.bqf").config()
      end,
    },
    {
      "akinsho/git-conflict.nvim",
      tag = "*",
      config = function()
        require("git-conflict").setup()
      end,
    },
    {
      "kylechui/nvim-surround",
      tag = "*",
      config = function()
        require("nvim-surround").setup()
      end,
    },
    {
      "AckslD/nvim-neoclip.lua",
      setup = function()
        require("latipun.plugins.neoclip").keybindings()
      end,
      config = function()
        require("latipun.plugins.neoclip").config()
      end,
    },
    {
      "andymass/vim-matchup",
      event = "BufReadPost",
      config = function()
        require("latipun.plugins.matchup").config()
      end,
    },
    {
      "lukas-reineke/indent-blankline.nvim",
      event = "BufReadPre",
      config = function()
        require("latipun.plugins.indent_blankline").config()
      end,
    },
    {
      "ThePrimeagen/harpoon",
      requires = { { "nvim-lua/plenary.nvim" }, { "nvim-lua/popup.nvim" } },
      setup = function()
        require("latipun.plugins.harpoon").keybindings()
      end,
    },
    { "famiu/bufdelete.nvim", event = "BufReadPre" },
    { "alker0/chezmoi.vim" },
    { "gpanders/editorconfig.nvim" },
    { "wakatime/vim-wakatime" },
  }
end

return M
