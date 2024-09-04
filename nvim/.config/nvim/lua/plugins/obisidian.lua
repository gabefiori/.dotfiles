return {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",

    dependencies = {
        "nvim-lua/plenary.nvim",
    },

    opts = {
        workspaces = {
            {
                name = "Notes",
                path = "~/Notes",
            },
        },
        daily_notes = {
            folder = "Daily",
        },
        ui = {
            enable = false
        }
    },
}
