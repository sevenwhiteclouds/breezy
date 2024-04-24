local M = {}

function M.set(hl, colors)
    require('breezy.highlights.general').set(hl, colors)
    require('breezy.highlights.plugins').set(hl, colors)
end

return M
