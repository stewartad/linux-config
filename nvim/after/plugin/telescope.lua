local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
local trouble = require('trouble.providers.telescope')
local telescope = require("telescope")

telescope.setup {
    defaults = {
        mappings = {
            i = { ["<C-t"] = trouble.open_with_trouble },
            n = { ["<C-t>t"] = trouble.open_with_trouble },
        },
    },
}

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<leader>ld', builtin.diagnostics, {})
--vim.keymap.set('n', '<leader>pt', builtin.diagnostics)
