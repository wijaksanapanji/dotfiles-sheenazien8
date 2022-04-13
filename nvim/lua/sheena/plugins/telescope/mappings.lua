local helpers = require('sheena.utils.helpers')
helpers.keymaps('n', '<C-P>', ':Telescope find_files<cr>', {noremap = true })
helpers.keymaps('n', '<C-E>', ':Telescope buffers<cr>', {noremap = true })
helpers.keymaps('n', '<leader>f;', ':Telescope commands<cr>', {noremap = true })
helpers.keymaps('n', '<leader>ff', ':Telescope find_files<cr>', {noremap = true })
helpers.keymaps('n', '<leader>fg', ':Telescope git_files<cr>', {noremap = true })
helpers.keymaps('n', '<leader>fb', ':Telescope buffers<cr>', {noremap = true })
helpers.keymaps('n', '<leader>fh', ':Telescope help_tags<cr>', {noremap = true })
helpers.keymaps('n', '<leader>ft', ':Telescope current_buffer_tags<cr>', {noremap = true })
helpers.keymaps('n', '<leader>fz', ':Telescope current_buffer_fuzzy_find<cr>', {noremap = true })
