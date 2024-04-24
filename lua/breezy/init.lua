local M = {}

function M.return_error(msg)
    error('breezy: ' .. msg)
end

function M.print_error(msg)
    vim.notify('Error: breezy: ' .. msg)
    vim.notify('')
end

function M.setup(user_config)
    require('breezy.config').setup(user_config)
end

function M.load()
    require('breezy.config').prepare()

    local colors = require('breezy.colors').get_colors()
    local highlighter = require('breezy.utils.highlighter')

    require('breezy.highlights').set(highlighter, colors)

    return highlighter, colors
end

function M.apply()
    vim.opt.termguicolors = true

    local highlighter, colors = M.load()

    highlighter.apply_all()

    require('breezy.cli').create()
    require('breezy.terminal').apply(colors)
end

return M
