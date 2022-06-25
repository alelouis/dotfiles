local api = vim.api

api.nvim_set_keymap("n", "<Leader>r", ":bot split | term python %<cr>", { noremap = true, silent = true})
