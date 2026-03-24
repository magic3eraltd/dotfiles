vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 8

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {
    "sphamba/smear-cursor.nvim",
    opts = {
      stiffness = 0.35,
      trailing_stiffness = 0.15,
      distance_stop_animating = 0.01,
      smear_insert_mode = true,
      hide_target_hack = false,
      cursor_color = "#E6E9EF",
      normal_bg = "#0F1115",
    },
  },

  {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night",
        on_colors = function(c)
          c.bg = "#0F1115"
          c.bg_dark = "#1A1D23"
          c.bg_highlight = "#2A2F38"
          c.border = "#3A404C"
          c.fg = "#C5C8CE"
          c.fg_gutter = "#3A404C"
          c.comment = "#3A404C"
          c.fg_sidebar = "#C5C8CE"
          c.fg_float = "#C5C8CE"
        end,
      })
      vim.cmd.colorscheme("tokyonight")
    end,
  },
})
