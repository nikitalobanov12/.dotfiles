-- Navigation & File Management
vim.keymap.set({ "n", "i" }, "<C-e>", "<CMD>Oil<CR>", { desc = "Open Oil file explorer" })
vim.keymap.set("n", "rr", "<CMD>Oil<CR>", { desc = "Open Oil file explorer" })

vim.keymap.set({ "i", "n" }, "<C-q>", function()
  Snacks.picker.grep({ cwd = vim.fn.getcwd() })
end, { desc = "Live Grep (cwd)" })

-- Editing
vim.keymap.set("i", "<C-F3>", "<Esc>o", { desc = "New line below" })

-- Terminal & Tmux Integration
vim.keymap.set("n", "<leader>th", ":split | terminal<CR>", { desc = "Terminal horizontal split" })
vim.keymap.set("n", "<leader>tv", ":vsplit | terminal<CR>", { desc = "Terminal vertical split" })
vim.keymap.set("n", "<leader>tt", ":terminal<CR>", { desc = "Terminal in current buffer" })

vim.keymap.set("n", "<leader>ts", function()
  vim.fn.system("tmux new-session -d -s nvim-session 2>/dev/null")
  print("Created tmux session: nvim-session")
end, { desc = "Create tmux session" })

vim.keymap.set("n", "<C-/>", function()
  if vim.env.TMUX then
    vim.fn.system("tmux send-keys C-` 2>/dev/null")
  else
    print("Not in a tmux session")
  end
end, { desc = "Toggle tmux terminal split" })
