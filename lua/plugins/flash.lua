return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {},
  -- stylua: ignore
  config = function ()
      require("flash").setup()
  end
}
