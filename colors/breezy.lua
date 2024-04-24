if vim.version().minor < 8 then
    vim.notify_once('breezy: only neovim 8.0 or higher is supported for working nvim-treesitter highlights')
    return
end

if vim.g.colors_name then
    vim.cmd('hi clear')
end

vim.g.colors_name = 'breezy'

require('breezy').apply()

