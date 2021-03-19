local lspconfig = require'lspconfig'
local configs = require'lspconfig/configs'
-- Check if it's already defined for when reloading this file.
if not lspconfig.ember_language_server then
  configs.ember_language_server = {
    default_config = {
      cmd = {"ember-language-server","--stdio"};
      name = "@lifeart/ember-language-server";
      filetypes = {"javascript","handlebars","html.handlebars"};
      root_dir = function(fname)
        return lspconfig.util.root_pattern("ember-cli-build.js")(fname);
      end;
      settings = {};
    };
  }
end
require "lspconfig".ember_language_server.setup{}
