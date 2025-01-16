return {
    {
        "tjdevries/express_line.nvim",
        config = function()
            vim.opt.laststatus = 3

            local builtin = require "el.builtin"
            local sections = require "el.sections"

            local function mode_abbr()
                local mode = vim.api.nvim_get_mode().mode

                if mode == 'n' then
                    return 'NOR'
                elseif mode == 'i' then
                    return 'INS'
                elseif mode == 'v' then
                    return 'VIS'
                elseif mode == 'V' then
                    return 'V-L'
                elseif mode == '\22' then
                    return 'V-B'
                elseif mode == 'r' then
                    return 'R'
                elseif mode == 's' then
                    return 'S'
                elseif mode == 'c' then
                    return 'CMD'
                else
                    return mode
                end
            end

            require("el").setup {
                generator = function()
                    local segments = {}

                    table.insert(segments, " ")
                    table.insert(segments, mode_abbr)
                    table.insert(segments, "   ")
                    table.insert(segments, "%f")
                    table.insert(segments, " %m")
                    table.insert(segments, sections.split)
                    table.insert(segments, builtin.filetype)
                    table.insert(segments, "  ")
                    table.insert(segments, builtin.line)
                    table.insert(segments, ":")
                    table.insert(segments, builtin.column)
                    table.insert(segments, " ")

                    return segments
                end,
            }
        end,
    },
}
