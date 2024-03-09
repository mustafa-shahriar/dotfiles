return {
    -- Prettier Plugin
    {
        "prettier/vim-prettier",
        run = "npm install",
        ft = {"css", "javascript", "typescript", "lua", "javascriptreact", "html", "typescriptreact"},  -- Specify the filetypes you want to format with Prettier
    }
}
