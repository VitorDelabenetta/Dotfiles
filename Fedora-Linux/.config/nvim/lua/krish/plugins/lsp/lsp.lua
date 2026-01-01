return {
  "hrsh7th/nvim-cmp", 
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        local opts = { buffer = args.buf }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
      end,
    })

    local servers = {
      "clangd",
      "gopls",
      "pyright",
      "nil",
      "bash-language-server",
      "typescript-language-server",
      "vscode-html-language-server",
      "vscode-css-language-server",
    }

    for _, server in ipairs(servers) do
      vim.lsp.config(server, {
        install = false,
        capabilities = capabilities,
      })
      vim.lsp.enable(server)
    end
  end,
}
