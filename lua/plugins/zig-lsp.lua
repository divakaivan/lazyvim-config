vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.zig", "*.zon" },
  callback = function(ev)
    vim.lsp.buf.code_action({
      context = { only = { "source.organizeImports" } },
      apply = true,
    })
  end,
})

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      zls = {
        filetypes = { "zig", "zon" },
        settings = {
          zls = {enable_snippets = false, -- Enables snippet completions when the client supports them
            enable_argument_placeholders = false, -- Enables function argument placeholder completions
                      },
        },
      },
    },
  },
}
