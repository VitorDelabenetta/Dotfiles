return {
  -- Language Server para comunicar erros, mostrar informações do código, hover da documentação, etc.

  -- Instalar LSPs com Mason
  {
    "williamboman/mason.nvim",

    config = function ()
      require ("mason").setup ()
    end
  },
  -- Comunica como uma ponte entre o Mason e Neovim e traz a garantia para instalação das linguagens
  {
    "williamboman/mason-lspconfig.nvim",

    config = function ()
      require ("mason-lspconfig").setup ({
        ensure_installed = { "lua_ls", "jdtls" }
      })
    end
  },
  -- Instalação de ferramentas para debugar os códigos Java
  {
    "jay-babu/mason-nvim-dap.nvim",

    config = function ()
      require ("mason-nvim-dap").setup ({
        ensure_installed = { "java-debug-adapter", "java-test" }
      })
    end
  },
  -- Utilitário para configurar o Java LSP
  {
    "mfussenegger/nvim-jdtls",

    dependencies = { "mfussenegger/nvim-dap" }
  },
  -- Configurações do Neovim para o plugin
  {
    "neovim/nvim-lspconfig",

    config = function ()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({}) -- setup para Lua LSP

      vim.keymap.set("n", "<leader>ch", vim.lsp.buf.hover, {}) -- abre um hover com texto sobre o comando
      vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, {}) -- mostra ações possíveis para correção
      vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, {}) -- vai até onde o código sobre o cursor foi definido
      vim.keymap.set("n", "<leader>cD", vim.lsp.buf.declaration, {}) -- mostra onde o código sobre o cursor foi declarado
      vim.keymap.set("n", "<leader>cr", require("telescope.builtin").lsp_references, {}) -- mostra as referências para o código
      vim.keymap.set("n", "<leader>ci", require("telescope.builtin").lsp_implementations, {}) -- mostra onde o código foi implementado
    end
  }
}
