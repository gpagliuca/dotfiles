return {
  'pappasam/nvim-repl',
  keys = {
    { '<Leader>c', '<Plug>(ReplSendCell)',   mode = 'n', desc = 'Send Repl Cell' },
    { '<Leader>r', '<Plug>(ReplSendLine)',   mode = 'n', desc = 'Send Repl Line' },
    { '<Leader>r', '<Plug>(ReplSendVisual)', mode = 'x', desc = 'Send Repl Visual Selection' },
  },
}
