-- Auto-reload files when changed externally
vim.o.autoread = true
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI", "FocusGained", "BufEnter" }, {
  pattern = "*",
  command = "checktime",
  desc = "Check for file changes",
})

-- Force cursor shape after all plugins load
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.defer_fn(function()
      vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250"
    end, 100)
  end,
  desc = "Set cursor shape after plugins load",
})

-- Maintain cursor shape on mode changes
vim.api.nvim_create_autocmd("ModeChanged", {
  callback = function()
    vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250"
  end,
  desc = "Maintain cursor shape on mode change",
})
