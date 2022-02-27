local api = vim.api

api.nvim_set_keymap("n", "<Leader>c", ":bot split | term Cbuild<cr>", { noremap = true, silent = true})
api.nvim_set_keymap("n", "<Leader>r", ":bot split | term Crun<cr>", { noremap = true, silent = true})
api.nvim_set_keymap("n", "<Leader>t", ":bot split | term Ctest<cr>", { noremap = true, silent = true})
