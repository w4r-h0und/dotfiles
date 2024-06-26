return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      integrations = {
        neotree = true,
        treesitter = true,
        mason = true,
        telescope = {
          enabled = true,
            -- style = "nvchad"
        },
      }
    })
    vim.cmd.colorscheme "catppuccin-mocha"
  end
}
