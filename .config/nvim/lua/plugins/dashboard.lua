return {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function()
        --     local logo = [[
        --      ██╗      █████╗ ███████╗██╗   ██╗██╗   ██╗██╗███╗   ███╗          Z
        --      ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝██║   ██║██║████╗ ████║      Z
        --      ██║     ███████║  ███╔╝  ╚████╔╝ ██║   ██║██║██╔████╔██║   z
        --      ██║     ██╔══██║ ███╔╝    ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║ z
        --      ███████╗██║  ██║███████╗   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║
        --      ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝
        -- ]]

        local logo = [[     ⢠⡀                 
         ⠈⢿⣦⡀                   
       ⢦⣄⠰⣄⡛⢿⣷⣦⣤⣀⡀              
        ⠈⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣷⣦⣀          
     ⠀⢀⣴⣿⣿⣿⣿⣿⣿⣻⣿⣿⣿⣿⣌⡻⣿⣄⠀        
    ⢀⣾⣿⣿⡿⢚⣿⡿⠟⠙⢿⣿⣿⣿⡟⠻⢿⣿⣷⣶⣆       
    ⣼⣿⡿⣫⣾⡖⠀⠐⣿⠗⠀⠉⠻⣿⣷⠀⠀⠈⠙⢿⡏       
    ⣿⣿⣵⣿⡟⢴⣦⣤⠙⠀⠀⠀⢀⣼⣿⣆⡀⠀⠀⠘⠀⠀      
    ⡿⢻⣿⣿⡇⡌⢻⣿⡀⠀⠀⠀⠀⠈⠉⠉⠁           
    ⠇⠸⣿⣿⡇⣧⡀⠈⠓     GrimVim       
     ⠀⢻⣿⣇⢻⣷⡴⢦⣤⣀⠀⠀⠀ v0.2         
     ⠀⠀⠙⣿⡀⠻⠿⢶⣤⣀⣀⠀⠀              
     ⠀⠀⠀⠈⠓⠄⠀⠀⠀⠀⠉⠁               ]]

        logo = string.rep("\n", 3) .. logo .. "\n\n"

        vim.cmd("highlight DashboardHeader guifg='#b03a43'")
        vim.cmd("highlight DashboardDesc guifg='#cacaca'")
        vim.cmd("highlight DashboardShortCut guifg='#b03a43'")
        vim.cmd("highlight DashboardKey guifg='#a581d8'")
        vim.cmd("highlight DashboardIconKey guifg='#8cb130'")
        vim.cmd("highlight DashboardFooter guifg='#d96725'")
        local opts = {
            theme = "doom",
            hide = {
                -- this is taken care of by lualine
                -- enabling this messes up the actual laststatus setting after loading a file
                statusline = false,
            },
            config = {
                header = vim.split(logo, "\n"),
        -- stylua: ignore
        center = {
          { action = "Telescope find_files",                                     desc = " Find file",       icon = " ", icon_hl = "@variable", key = "f"},
          -- { action = "ene | startinsert",                                        desc = " New file",        icon = " ", key = "n" },
          { action = "Telescope oldfiles",                                       desc = " Recent files",    icon = " ", key = "r", icon_hl = "Constant"},
          { action = "Telescope live_grep",                                      desc = " Find text",       icon = " ", key = "g", icon_hl = "WarningMsg"},
          { action = [[lua require("lazyvim.util").telescope.config_files()()]], desc = " Config",          icon = " ", key = "c", icon_hl = "String"},
          { action = 'lua require("persistence").load()',                        desc = " Restore Session", icon = " ", key = "s", icon_hl = "Function"},
          -- { action = "LazyExtras",                                               desc = " Lazy Extras",     icon = " ", key = "x" },
          -- { action = "Lazy",                                                     desc = " Lazy",            icon = "󰒲 ", key = "l" },
          { action = "qa",                                                       desc = " Quit",            icon = " ", key = "q", icon_hl = "Keyword"},
        },
                footer = function()
                    -- local stats = require("lazy").stats()
                    -- local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
                    -- return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
                    return { "Enjoy the feeling  💕" }
                end,
            },
        }

        for _, button in ipairs(opts.config.center) do
            button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
            button.key_format = "  [ %s ]"
        end

        -- close Lazy and re-open when the dashboard is ready
        if vim.o.filetype == "lazy" then
            vim.cmd.close()
            vim.api.nvim_create_autocmd("User", {
                pattern = "DashboardLoaded",
                callback = function()
                    require("lazy").show()
                end,
            })
        end

        return opts
    end,
}
