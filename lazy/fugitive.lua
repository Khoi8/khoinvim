return {
  {
    url="https://tpope.io/vim/fugitive.git",
    config = function()
      vim.keymap.set('n', '<leader>gp',
        function()
          vim.cmd.Git({'pull',  '--rebase'})
        end, {})
      vim.keymap.set('n', '<leader>gf',
        function()
          vim.cmd.Git({'fetch origin'})
        end, {})
      vim.keymap.set('n', '<leader>gc',
        function()
            vim.cmd.Git('commit')
        end, {})
      vim.keymap.set('n', '<leader>gs',
        function()
          vim.cmd.Git()
        end, {})
      vim.keymap.set('n', '<leader>p',
        function()
          vim.cmd.Git({'push'})
        end, {})
    end
  }
}
