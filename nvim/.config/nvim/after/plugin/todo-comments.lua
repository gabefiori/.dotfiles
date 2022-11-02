require("todo-comments").setup {
    --TODO:
    --PERF:
    --FIXME:
    --BUG:
    --NOTE:
    --HACK:
    --WARNING:
    signs = false, -- show icons in the signs column
    highlight = {
        multiline = true, -- enable multine todo comments
        before = "", -- "fg" or "bg" or empty
        keyword = "bg", -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
        after = "", -- "fg" or "bg" or empty
    },
}
