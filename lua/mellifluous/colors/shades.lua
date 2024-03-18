local M = {}

function M.get_recipes()
    local config = require('mellifluous.config').config

    local shared_recipes = {
        ui_red = { target = 'red', action = 'with_li', val = 'ui' },
        ui_orange = { target = 'orange', action = 'with_li', val = 'ui' },
        ui_green = { target = 'green', action = 'with_li', val = 'ui' },
        ui_blue = { target = 'blue', action = 'with_li', val = 'ui' },
        ui_purple = { target = 'purple', action = 'with_li', val = 'ui' },
    }
    local recipes = {}

    if config.is_bg_dark then
        recipes = {
            fg2 = { target = 'fg', action = 'da', val = 10 }, -- default is 16
            fg3 = { target = 'fg', action = 'da', val = 20 }, -- default is 32
            fg4 = { target = 'fg', action = 'da', val = 30 }, -- default is 48
            fg5 = { target = 'fg', action = 'da', val = 54 },
            dark_bg = { target = 'bg', action = 'da', val = 2.5 },
            bg2 = { target = 'bg', action = 'li', val = 4 },
            bg3 = { target = 'bg', action = 'li', val = 6 },
            bg4 = { target = 'bg', action = 'li', val = 8 },
            bg5 = { target = 'bg', action = 'li', val = 10 },
        }
    else
        recipes = {
            fg2 = { target = 'fg', action = 'li', val = 16 },
            fg3 = { target = 'fg', action = 'li', val = 32 },
            fg4 = { target = 'fg', action = 'li', val = 48 },
            fg5 = { target = 'fg', action = 'li', val = 54 },
            dark_bg2 = { target = 'bg', action = 'da', val = 8 },
            dark_bg = { target = 'bg', action = 'da', val = 2.5 },
            bg2 = { target = 'bg', action = 'li', val = 4 },
            bg3 = { target = 'bg', action = 'li', val = 6 },
            bg4 = { target = 'bg', action = 'li', val = 8 },
        }
    end

    recipes = vim.tbl_extend('force', recipes, shared_recipes)
    return recipes
end

return M
