local lsp_installer = require "nvim-lsp-installer"

-- 安装列表
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
-- { key: 语言 value: 配置文件 }
local servers = {
  sumneko_lua = require "lsp.lua", -- /lua/lsp/lua.lua
 -- gopls = require "lsp.gopls", -- /lua/lsp/gopls.lua
 -- vimls = require "lsp.vimls", -- /lua/lsp/vimls.lua
 -- dockerls = require "lsp.dockerls", -- /lua/lsp/dockerls.lua
 -- eslint = require "lsp.eslint", -- /lua/lsp/eslint.lua
 -- jsonls = require "lsp.jsonls", -- /lua/lsp/jsonls.lua
 -- tailwindcss = require "lsp.tailwindcss", -- /lua/lsp/tailwindcss.lua
 -- volar = require "lsp.volar", -- /lua/lsp/volar.lua
}

-- 自动安装 LanguageServers
for name, _ in pairs(servers) do
  local server_is_found, server = lsp_installer.get_server(name)
  if server_is_found then
    if not server:is_installed() then
      print("Installing " .. name)
      server:install()
    end
  end
end

-- Register a handler that will be called for each installed server when it's ready (i.e. when installation is finished
-- or if the server is already installed).
lsp_installer.on_server_ready(function(server)
    local opts = {}

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end
    server:setup(opts)
end)
