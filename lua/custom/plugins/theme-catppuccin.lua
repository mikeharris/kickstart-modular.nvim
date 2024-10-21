-- Catppuccin is a neovim theme plugin
-- https://github.com/catppuccin/nvim

return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    transparent_background = true,
    integrations = {
      cmp = true,
      gitsigns = true,
      gitgutter = true,
      neotree = true,
      treesitter = true,
      lsp_trouble = true,
      mason = true,
      mini = true,
      nvim_surround = true,
    },
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'catppuccin-mocha', 'catppuccin-latte', 'catppuccin-frappe' or 'catppuccin-macchiato'.
      vim.cmd.colorscheme 'catppuccin-mocha'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
