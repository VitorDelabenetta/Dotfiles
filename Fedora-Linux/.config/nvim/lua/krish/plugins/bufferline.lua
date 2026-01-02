return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local bufferline = require("bufferline")

    bufferline.setup({
      options = {
        mode = "buffers", -- show individual buffers
        numbers = "none",
        diagnostics = "nvim_lsp",
        separator_style = "thin", -- looks nice with most themes
        show_buffer_close_icons = true,  -- 👈 shows the little [x]
        show_close_icon = false,
        always_show_bufferline = true,
        close_command = "bdelete! %d",   -- action for clicking the [x]
        right_mouse_command = "bdelete! %d", -- also allow right-click close
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "center",
          },
        },
      },
    })

    -- ⚡ Keymaps
    -- Close current buffer cleanly
    vim.keymap.set("n", "<leader>cb", ":bp | bd #<CR>", { desc = "Close current buffer" })

    -- Jump to buffers directly
    vim.keymap.set("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<CR>", { desc = "Go to buffer 1" })
    vim.keymap.set("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<CR>", { desc = "Go to buffer 2" })
    vim.keymap.set("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<CR>", { desc = "Go to buffer 3" })
    vim.keymap.set("n", "<leader>4", "<cmd>BufferLineGoToBuffer 4<CR>", { desc = "Go to buffer 4" })
    vim.keymap.set("n", "<leader>5", "<cmd>BufferLineGoToBuffer 5<CR>", { desc = "Go to buffer 5" })
    vim.keymap.set("n", "<leader>6", "<cmd>BufferLineGoToBuffer 6<CR>", { desc = "Go to buffer 6" })
    vim.keymap.set("n", "<leader>7", "<cmd>BufferLineGoToBuffer 7<CR>", { desc = "Go to buffer 7" })
    vim.keymap.set("n", "<leader>8", "<cmd>BufferLineGoToBuffer 8<CR>", { desc = "Go to buffer 8" })
    vim.keymap.set("n", "<leader>9", "<cmd>BufferLineGoToBuffer 9<CR>", { desc = "Go to buffer 9" })

    -- Optional: quick cycle with Tab
    vim.keymap.set("n", "<leader>n", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
    vim.keymap.set("n", "<leader>p", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
  end,
}

