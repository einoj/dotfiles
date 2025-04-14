vim.opt.number = true 
vim.opt.relativenumber = true
vim.opt.ignorecase = true
vim.opt.swapfile = false
vim.opt.clipboard = "unnamedplus"
-- indent options
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
-- completion options
vim.opt.wildmode = "longest,list,full"
-- Set colorscheme
vim.o.termguicolors = true
vim.o.background = "light"
-- Set dummy variable to avoid error message from nvim 0.11.0
-- because suckless.vim uses unsupported variable
vim.g.suckless_guitablabel= "unused variable"
local colorscheme = "solarized"
local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "COMMIT_EDITMSG",
    command = "setlocal spell",
    group = _git
})
