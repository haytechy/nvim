local options = {
    mouse = "a",
    cursorline = true,
    showmatch = true,
    conceallevel = 0,
    relativenumber = true,
    nu = true,
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
    hlsearch = false,
    incsearch = true,
    termguicolors = true,
    scrolloff = 10,
}


for k, v in pairs(options) do
    vim.opt[k] = v
end
