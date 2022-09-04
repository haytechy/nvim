local options = {
    encoding = "utf-8",
    mouse = "a",
    cursorline = true,
    conceallevel = 0,
    relativenumber = true,
    nu = true,
    hlsearch = false,
    hidden = true,
    errorbells = false,
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    smartindent = true,
    wrap = false,
    swapfile = false,
    backup = false,
    undofile = true,
    incsearch = true,
    termguicolors = true,
    scrolloff = 8,
    laststatus = 3,
}

vim.notify = require("notify")

for k, v in pairs(options) do
    vim.opt[k] = v
end
