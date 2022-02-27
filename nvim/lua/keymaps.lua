local api = vim.api

vim.g.mapleader = " "

-- exit insert mode
api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })
api.nvim_set_keymap("v", "jk", "<Esc>", { noremap = true, silent = true })

-- move lines
api.nvim_set_keymap("v", "J", [[:m '>+1<cr>gv=gv]], { noremap = true })
api.nvim_set_keymap("v", "K", [[:m '>-2<cr>gv=gv]], { noremap = true })

-- telescope
api.nvim_set_keymap("n", "<Leader>ff", [[<cmd>lua require('telescope.builtin').find_files()<cr>]], { noremap = true })
api.nvim_set_keymap("n", "<Leader>km", [[<cmd>lua require('telescope.builtin').keymaps()<cr>]], { noremap = true })
api.nvim_set_keymap("n", "<Leader>g", [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], { noremap = true })
api.nvim_set_keymap("n", "<Leader>b", [[<cmd>lua require('telescope.builtin').buffers()<cr>]], { noremap = true })
api.nvim_set_keymap("n", "<Leader>h", [[<cmd>lua require('telescope.builtin').help_tags()<cr>]], { noremap = true })
api.nvim_set_keymap("n", "<Leader>of", [[<cmd>lua require('telescope.builtin').oldfiles()<cr>]], { noremap = true })
api.nvim_set_keymap("n", "<Leader>ca", [[<cmd>lua require('telescope.builtin').lsp_code_actions()<cr>]], { noremap = true })
api.nvim_set_keymap("n", "<Leader>gd", [[<cmd>lua require('telescope.builtin').lsp_definitions()<cr>]], { noremap = true })
api.nvim_set_keymap("n", "<Leader>gr", [[<cmd>lua require('telescope.builtin').lsp_references()<cr>]], { noremap = true })
api.nvim_set_keymap("n", "<Leader>d", [[<cmd>lua require('telescope.builtin').diagnostics()<cr>]], { noremap = true })

-- Code running 
-- api.nvim_set_keymap("n", "Leader<r>", [[<cmd>Crun<cr>]], { noremap = true })
-- api.nvim_set_keymap("n", "Leader<t>", [[<cmd>Ctest<cr>]], { noremap = true })
-- api.nvim_set_keymap("n", "<Leader>r", ":split | terminal gcc *.c -o run && ./run<cr>", { noremap = true, silent = true})

-- Fast keymaps
api.nvim_set_keymap("n", "<Leader>s", ":w<cr>", { noremap = true})
api.nvim_set_keymap("n", "<Leader>q", ":q<cr>", { noremap = true})
api.nvim_set_keymap("n", "<Leader>qq", ":q!<cr>", { noremap = true})
api.nvim_set_keymap("n", "<Leader>sq", ":wq<cr>", { noremap = true})


