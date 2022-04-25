if vim.g.neovide then
    vim.g.neovide_remember_window_size=true;
    vim.go.guifont="Fira Code:h12";
    vim.env.PATH="/home/lin/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/bin"..":"..vim.env.PATH
    vim.env.ALL_PROXY="http://localhost:8118"
end

