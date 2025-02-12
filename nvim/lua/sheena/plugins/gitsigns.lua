require('gitsigns').setup{
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Navigation
    map('n', ']c', function()
      if vim.wo.diff then return ']c' end
      vim.schedule(function() gs.next_hunk() end)
      return '<Ignore>'
    end, {expr=true})

    map('n', '[c', function()
      if vim.wo.diff then return '[c' end
      vim.schedule(function() gs.prev_hunk() end)
      return '<Ignore>'
    end, {expr=true})

    -- Actions
    map({'n', 'v'}, '<leader>bs', ':Gitsigns stage_hunk<CR>')
    map({'n', 'v'}, '<leader>br', ':Gitsigns reset_hunk<CR>')
    map('n', '<leader>bS', gs.stage_buffer)
    map('n', '<leader>bu', gs.undo_stage_hunk)
    map('n', '<leader>bR', gs.reset_buffer)
    map('n', '<leader>bp', gs.preview_hunk)
    map('n', '<leader>bl', function() gs.blame_line{full=true} end)
    map('n', '<leader>bb', gs.toggle_current_line_blame)
    map('n', '<leader>bd', gs.diffthis)
    map('n', '<leader>bD', function() gs.diffthis('~') end)

    -- Text object
    map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
  end
}

