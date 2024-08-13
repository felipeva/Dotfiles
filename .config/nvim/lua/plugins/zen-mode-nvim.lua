return {
  "folke/zen-mode.nvim",
  cmd = "ZenMode",
  opts = {
    window = {
      options = {
        number = true,
        relativenumber = true,
        list = true,
      },
    },
    plugins = {
      options = {
        enabled = true,
        showcmd = true,
        ruler = true,
        laststatus = 1,
      },
      twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
      gitsigns = { enabled = true }, -- disables git signs
    },
  },
}
