if true then
    return {}
end

-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#1c1c1c',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
}

local bubbles_theme = {
    normal = {
        a = { fg = colors.black, bg = colors.violet },
        b = { fg = colors.white, bg = colors.grey },
        c = { fg = colors.black, bg = colors.black },
    },

    insert = { a = { fg = colors.black, bg = colors.blue } },
    visual = { a = { fg = colors.black, bg = colors.cyan } },
    replace = { a = { fg = colors.black, bg = colors.red } },

    inactive = {
        a = { fg = colors.white, bg = colors.black },
        b = { fg = colors.white, bg = colors.black },
        c = { fg = colors.black, bg = colors.black },
    },
}

return {
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            theme = "catppuccin",
            options = {
                component_separators = " ",
                section_separators = { left = "", right = "" },
            },
            sections = {
                lualine_a = {
                    { "mode", separator = { left = "" }, right_padding = 6, left_padding = 6 },
                },
                lualine_b = { "filename", "branch" },
                lualine_c = { "fileformat" },
                lualine_x = {},
                lualine_y = { "filetype" },
                lualine_z = {
                    -- { "location", separator = { right = "" }, left_padding = 2 },
                    { "progress", separator = { right = "" }, left_padding = 6, right_padding = 6 },
                },
            },
            inactive_sections = {
                lualine_a = { "filename", "branch" },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = { "location" },
            },
        },
    },
}
--
-- require("lualine").setup({
--     options = {
--         theme = bubbles_theme,
--         component_separators = "|",
--         section_separators = { left = "", right = "", left_padding = 6, right_padding = 6 },
--     },
--     sections = {
--         lualine_a = {
--             { "mode", separator = { left = "" }, right_padding = 6, left_padding = 6 },
--         },
--         lualine_b = { "filename", "branch" },
--         lualine_c = { "fileformat" },
--         lualine_x = {},
--         lualine_y = { "filetype" },
--         lualine_z = {
--             -- { "location", separator = { right = "" }, left_padding = 2 },
--             { "progress", separator = { right = "" }, left_padding = 6, right_padding = 6 },
--         },
--     },
--     inactive_sections = {
--         lualine_a = { "filename", "branch" },
--         lualine_b = {},
--         lualine_c = {},
--         lualine_x = {},
--         lualine_y = {},
--         lualine_z = { "location" },
--     },
--     tabline = {},
--     extensions = {},
-- })
