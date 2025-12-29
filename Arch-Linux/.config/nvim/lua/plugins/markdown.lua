return {
  -- Instalação do Markdown Render
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" },

  config = function ()
    require("render-markdown").setup ({})
  end
}
