return {
  'numToStr/Comment.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    -- Basic configuration
    toggler = {
      line = 'gcc', -- Keybinding for commenting a single line
      block = 'gbc', -- Keybinding for commenting a block of code
    },
    opleader = {
      line = 'gc', -- Keybinding for commenting a single line in operator-pending mode
      block = 'gb', -- Keybinding for commenting a block in operator-pending mode
    },
    mappings = {
      -- You can customize which keybindings are active
      basic = true,
      extra = true,
      extended = false,
    },
  },
}
