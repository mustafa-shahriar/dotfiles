return {
    -- Prettier Plugin
        "prettier/vim-prettier",
        run = "npm install",
        ft = {"css", "javascript", "typescript", "lua", "javascriptreact", "html", "typescriptreact", "vue"},  -- Specify the filetypes you want to format with Prettier
}
