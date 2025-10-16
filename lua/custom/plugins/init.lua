return {
  -- Harpoon
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },

  -- 42 Header plugin (correct public repo)
  {
    'pbondoer/vim-42header',
    config = function()
      vim.g.user42 = 'blanglai'
      vim.g.mail42 = 'blanglai@student.42.fr'
    end,
  },

  {
    'xeluxee/competitest.nvim',
    dependencies = 'MunifTanjim/nui.nvim',
    config = function()
      require('competitest').setup {
        -- Optional: define a custom command for norminette checking
        run_command = {
          c = 'norminette %s | grep -E "Error|Warning" || echo "Norm OK"',
        },
      }
    end,
  },
}
