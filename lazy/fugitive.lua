return {
  { 
    url="https://tpope.io/vim/fugitive.git",
    config = function()
      vim.keymap.set('n', '<leader>P',
        function()
          vim.cmd.Git({'pull',  '--rebase'})
        end, {})
      vim.keymap.set('n', '<leader>gs',
        function() 
          vim.cmd.Git({'status'})
        end, {})
    end
  }
}
