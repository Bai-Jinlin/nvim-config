vim.g.dashboard_default_executive = 'telescope'
vim.g.dashboard_custom_section = {
    a = {
        description = { string.format('%s', 'Find File') },
        command = 'Telescope find_files',
    },
    b = {
        description = { string.format('%s', 'Find History') },
        command = 'Telescope oldfiles',
    },
    c = {
        description = { string.format('%s', 'Find Word') },
        command = 'Telescope live_grep',
    },
    d = {
        description = { string.format('%s', 'Projects') },
        command = 'Telescope projects',
    },
    e = {
        description = { string.format('%s', 'Edit NeoVim Config') },
        command = 'cd ~/.config/nvim | edit init.lua',
    },
}
-- vim.g.dashboard_session_dirctory="/home/lin/dashboard_session"
