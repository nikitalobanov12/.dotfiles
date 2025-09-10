return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      explorer = { enabled = false },
      picker = {
        enabled = false,
      },
      indent = { enabled = false },
      dashboard = {
        preset = {
          header = [[
49 27 71 20 6d 61 69 7a 63 78
6b 27 64 20 70 74 6d 69 7a 66 76 62
44 73 72 78 73 20 6c 6d 76 3f

          ]],
        },
        sections = {
          { section = "header" },
        },
      },
    },
  },
}
