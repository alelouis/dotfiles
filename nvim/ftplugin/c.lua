local api = vim.api

api.nvim_set_keymap("n", "<Leader>c", ":bot split | term gcc -c *.c<cr>", { noremap = true, silent = true})
api.nvim_set_keymap("n", "<Leader>r", ":bot split | term gcc *.c -o run && ./run<cr>", { noremap = true, silent = true})
