return {
  'rebelot/kanagawa.nvim',
  name = 'kanagawa',
  priority = 1000,
  transparent = true,

  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function()
      require('kanagawa').setup {
        transparent = true,
        theme = 'wave',
        colors = {
          palette = {},
          theme = { wave = { ui = { bg = 'none' } } },
        },
      }
      vim.cmd.colorscheme 'kanagawa-wave'
    end,
  },
}
