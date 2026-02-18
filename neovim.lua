return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors - dark circus tent
                bg = "#120515",
                bg_dark = "#1a0a1f",

                fg = "#e0e0e0",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#4b0082",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#4b0082",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#dc143c",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#ff1493",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#ffff00",
                -- green: Comments, strings, success states, git additions
                green = "#39ff14",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#00ffff",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#ff1493",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#bf00ff",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#da70d6",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
