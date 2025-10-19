return {
  {
    "thesimonho/kanagawa-paper.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      undercurl = true,
      transparent = false,
      gutter = false,
      diag_background = true,
      dim_inactive = false,
      terminal_colors = true,
      styles = {
        comment = { italic = true },
        functions = { italic = false },
        keyword = { italic = false, bold = false },
        statement = { italic = false, bold = false },
        type = { italic = false },
      },
      overrides = function(colors)
        -- ここでハイライトグループのオーバーライド可能
        return {
          -- 例: String = { fg = colors.palette.carpYellow, italic = true }
        }
      end,
    },
    config = function(_, opts)
      require("kanagawa-paper").setup(opts)
      -- vim.cmd.colorscheme("kanagawa-paper")
      vim.cmd.colorscheme("kanagawa-paper-ink") -- ダーク向け
      -- vim.cmd.colorscheme("kanagawa-paper-canvas") -- ライト向け
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-paper", -- LazyVim のデフォルト色設定に反映
    },
  },
}
