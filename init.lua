-- runs vim options and keymaps on startup
require("options")
require("keymaps")

-- wsl clipboard functionality using pwsh
local wsl = false
if wsl then
  vim.g.clipboard = {
    name = "wslclipboard",
    copy = {
      ["+"] = "clip.exe",
      ["*"] = "clip.exe",
    },
    paste = {
      ["+"] = 'powershell.exe -c [console]::out.write($(get-clipboard -raw).tostring().replace("`r", ""))',
      ["*"] = 'powershell.exe -c [console]::out.write($(get-clipboard -raw).tostring().replace("`r", ""))',
    },
    cache_enabled = 0,
  }
end

-- ensure lazy (our package manager) is installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
