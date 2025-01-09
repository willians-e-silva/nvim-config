return {
  'nvim-tree/nvim-tree.lua',
  opts = {
    view = {
      width = 30,
      side = 'left',
      -- auto_resize = true,
    },
    git = {
      enable = true,
      ignore = false,
    },
    filters = {
      dotfiles = false, -- Set to true to hide dotfiles
    },
    actions = {
      open_file = {
        quit_on_open = false, -- Keeps the tree open when opening a file
      },
    },
  },
}
