local M = {}

function M.set(hl, colors)
    local config = require('breezy.config').config

    for plugin in pairs(config.plugins) do
        if (type(config.plugins[plugin]) == 'table' and config.plugins[plugin].enabled == true)
            or (type(config.plugins[plugin]) == 'boolean' and config.plugins[plugin] == true) then
            require('breezy.highlights.plugins.' .. plugin).set(hl, colors)
        end
    end

    require('breezy.highlights.plugins.treesitter').set(hl, colors)
    require('breezy.highlights.plugins.semantic_tokens').set(hl, colors)
end

return M
