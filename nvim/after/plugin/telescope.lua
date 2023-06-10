local telescope_status_is_ok, telescope = pcall(require, 'telescope')
if not telescope_status_is_ok then
  return
end

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

telescope.setup {
  defaults = {
    file_ignore_patterns = { 'node_modules', 'vendor', 'dist', 'build' },
  },
  pickers = {
    find_files = {
        hidden = true,
    }
  },
}
