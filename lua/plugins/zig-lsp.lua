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
          zls = {
            enable_inlay_hints = true,
            enable_build_on_save = false,
            enable_snippets = false, -- Enables snippet completions when the client supports them
            enable_argument_placeholders = false, -- Enables function argument placeholder completions
            completion_label_details = true, -- Shows function signature in completion results
            semantic_tokens = "full", -- Level of semantic tokens (none, partial, full)
            inlay_hints_show_variable_type_hints = true, -- Enables inlay hints for variable types
            inlay_hints_show_struct_literal_field_type = true, -- Enables inlay hints for struct and union literal fields
            inlay_hints_show_parameter_name = true, -- Enables inlay hints for parameter names
            inlay_hints_show_builtin = false, -- Enables inlay hints for builtin functions
            inlay_hints_exclude_single_argument = false, -- Disables inlay hints for single argument calls
            inlay_hints_hide_redundant_param_names = false, -- Does not hide redundant parameter names
            inlay_hints_hide_redundant_param_names_last_token = false, -- Does not hide redundant param names in complex expressions
            force_autofix = false, -- Does not force auto-fix for unsupported editors
            warn_style = true, -- Disables warnings for style guideline mismatches
            highlight_global_var_declarations = false, -- Does not highlight global variable declarations
            skip_std_references = false, -- Includes standard library references in searches
          },
        },
      },
    },
  },
}
