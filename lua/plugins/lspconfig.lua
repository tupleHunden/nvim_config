return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tsserver = {
        settings = {
          completions = {
            completeFunctionCalls = true,
          },
        },
      },
      eslint = {
        settings = {
          workingDirectory = { mode = "auto" },
        },
      },
    },
    setup = {
      eslint = function()
        vim.api.nvim_create_autocmd("BufWritePre", {
          callback = function(event)
            if require("lspconfig.util").get_active_client_by_name(event.buf, "eslint") then
              vim.cmd("EslintFixAll")
            end
          end,
        })
      end,
      tsserver = function(_, opts)
        require("lazyvim.util").on_attach(function(client, buffer)
          if client.name == "tsserver" then
          -- stylua: ignore
          vim.keymap.set("n", "<leader>co", "<cmd>TypescriptOrganizeImports<CR>", { buffer = buffer, desc = "Organize Imports" })
          -- stylua: ignore
          vim.keymap.set("n", "<leader>cR", "<cmd>TypescriptRenameFile<CR>", { desc = "Rename File", buffer = buffer })
          end
        end)
        require("typescript").setup({ server = opts })
        return true
      end,
      godot = function(_, opts)
        require("gdscript")
      end,
    },
  },
}
