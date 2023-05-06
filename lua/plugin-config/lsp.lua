require('mason').setup()
require('mason-lspconfig').setup{
  ensure_installed = { "lua_language_server", "gopls" },
}

require('mason-lspconfig').setup()

-- require'lspconfig'.tsserver.setup{}

require("mason-lspconfig").setup_handlers {
   function (server_name) -- default handler (optional)
       require("lspconfig")[server_name].setup { }
   end,


  ["gopls"] = function ()
    require("lspconfig").gopls.setup {
      settings = {
        semanticTokens = true
      }
    }
  end

}

vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]

local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
