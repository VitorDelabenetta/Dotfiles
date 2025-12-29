return {
  {
  	-- Instalação do Telescope e do Plenary
  	"nvim-telescope/telescope.nvim",
    tag = "0.1.8",
	  dependencies = { "nvim-lua/plenary.nvim" },

    config = function ()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<C-p>", builtin.find_files, {}) -- Abrir o Telescope (ctrl + p)
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {}) -- Abrir o Find by Grep (space + fg)
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",

    config = function ()
      require("telescope").setup ({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  }
}
