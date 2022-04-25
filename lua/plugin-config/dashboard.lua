vim.g.dashboard_default_executive = "telescope"
vim.g.dashboard_custom_section={
    a={
        description={"Find File"},
        command="Telescope find_files"
    },
    b={
        description={"Find History"},
        command="Telescope oldfiles"
    },
    c={
        description={"Find Word"},
        command="Telescope live_grep"
    },
    d={
        description={"Projects"},
        command="Telescope projects"
    },
    e={
        description={"Edit NeoVim Config"},
        command="cd ~/.config/nvim | edit init.lua"
    },
}
-- vim.g.dashboard_session_dirctory="/home/lin/dashboard_session"
