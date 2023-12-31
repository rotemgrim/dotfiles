if true then
    return {}
end

return {
    { "rcarriga/nvim-notify", enabled = false },
    { "stevearc/dressing.nvim", enabled = false },
    {
        "olimorris/onedarkpro.nvim",
        priority = 1000, -- Ensure it loads first
    },
    -- {
    --   "folke/noice.nvim",
    --   enabled = false,
    -- },
    -- {
    --   "lukas-reineke/indent-blankline.nvim",
    --   opts = {
    --     char = "▏",
    --   },
    -- },
    {
        "echasnovski/mini.indentscope",
        opts = { symbol = "▏" },
    },
    {
        "NvChad/nvim-colorizer.lua",
        event = "BufRead",
        config = true,
    },
    "Bekaboo/dropbar.nvim",
    { "SmiteshP/nvim-navic", enabled = false },
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            theme = "catppuccin",
            options = {
                component_separators = " ",
                section_separators = { left = "", right = "" },
            },
        },
    },
}
