local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- q => b
keymap("n", "q", "b", opts)

-- cmd + q => quit
keymap("n", "<C-q>", "<NOP>", opts)

-- cmd + s => save
-- keymap("n", "<C-s>", ":w<cr>", opts)

-- cmd + p => files palette
keymap("n", "<C-p>", ":Files<cr>", opts)

-- cmd + P => commands palette
-- keymap("n", "<A-j>", ":Commands<cr>", opts)
-- keymap("n", "<A-o>", "i", opts)

-- Leader + t => open nvim tree
keymap("n", "<C-t>", ":NvimTreeToggle<cr>", opts)

-- keymap("n", "<leader>e", "i", opts)

-- close buffer
--
