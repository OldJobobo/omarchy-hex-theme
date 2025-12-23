return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#241b30", -- Default background
                base01 = "#7f7094", -- Lighter background (status bars)
                base02 = "#241b30", -- Selection background
                base03 = "#7f7094", -- Comments, invisibles
                base04 = "#b9b1bc", -- Dark foreground
                base05 = "#f2f2e3", -- Default foreground
                base06 = "#f2f2e3", -- Light foreground
                base07 = "#b9b1bc", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#e60a70", -- Variables, errors, red
                base09 = "#e60a70", -- Integers, constants, orange
                base0A = "#adad3e", -- Classes, types, yellow
                base0B = "#00986c", -- Strings, green
                base0C = "#00b0b1", -- Support, regex, cyan
                base0D = "#6e29ad", -- Functions, keywords, blue
                base0E = "#b300ad", -- Keywords, storage, magenta
                base0F = "#f9f972", -- Deprecated, brown/yellow
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
