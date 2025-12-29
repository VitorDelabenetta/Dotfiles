return {
  -- Instalação do Alpha (inicialização do Nvim)
  "goolord/alpha-nvim",
  dependencies = { "echasnovski/mini.icons", "nvim-lua/plenary.nvim" },

  config = function ()
    require"alpha".setup(require"alpha.themes.theta".config)
  end
}
