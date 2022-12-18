local builtin = require('telescope.builtin')

-- Search among all files
vim.keymap.set('n', '<leader>pp', builtin.find_files, {})

-- Grep search among all files
vim.keymap.set('n', '<leader>ff', builtin.live_grep, {})

-- Search among all git files
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
