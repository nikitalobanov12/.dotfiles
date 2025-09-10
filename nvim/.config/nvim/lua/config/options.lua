-- Add local bin to PATH for fd symlink
vim.env.PATH = vim.fn.stdpath("config") .. "/bin:" .. vim.env.PATH

-- UI Settings
vim.opt.listchars = {
  tab = "  ",
  extends = "❯",
  precedes = "❮", 
  nbsp = "␣",
}

-- LSP Settings
vim.lsp.inlay_hint.enable(false)

-- Line ending settings to prevent ^M characters
vim.opt.fileformats = { "unix", "dos" }
vim.opt.fileformat = "unix"

-- Clipboard integration with Windows
vim.opt.clipboard = "unnamedplus"
vim.g.clipboard = {
  name = "win32yank-wsl",
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf",
  },
  paste = {
    ["+"] = "win32yank.exe -o --lf",
    ["*"] = "win32yank.exe -o --lf",
  },
  cache_enabled = 0,
}
