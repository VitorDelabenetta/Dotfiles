return {
  -- Instalação do Lualine
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function ()
    require("lualine").setup ({
      options = {
        theme = "palenight"
        -- Outros temas legais: "dracula", "nord", "palenight" [favorito azul], "everforest"
      }
    })
  end
}
