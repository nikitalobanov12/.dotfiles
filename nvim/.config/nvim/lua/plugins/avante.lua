return {
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false,
    build = vim.fn.has("win32") ~= 0
        and "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
      or "make",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      {
        "MeanderingProgrammer/render-markdown.nvim",
        ft = { "markdown", "Avante" },
        opts = {
          file_types = { "markdown", "Avante" },
        },
      },
      { "stevearc/dressing.nvim", optional = true },
      { "folke/snacks.nvim", optional = true },
    },
    keys = {
      { "<leader>aa", "<cmd>AvanteAsk<cr>", desc = "Avante Ask" },
      { "<leader>at", "<cmd>AvanteToggle<cr>", desc = "Avante Toggle" },
    },
    opts = function()
      local provider = vim.env.AVANTE_PROVIDER
      local opts = {
        instructions_file = "avante.md",
      }
      if provider and provider ~= "" then
        opts.provider = provider
      end

      local ok_snacks, _ = pcall(require, "snacks")
      if ok_snacks then
        opts.input = {
          provider = "snacks",
          provider_opts = {
            title = "Avante Input",
            icon = " ",
          },
        }
      else
        local ok_dressing, _ = pcall(require, "dressing")
        if ok_dressing then
          opts.input = {
            provider = "dressing",
          }
        end
      end

      return opts
    end,
  },
}
