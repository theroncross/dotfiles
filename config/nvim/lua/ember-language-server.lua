local lspconfig = require'lspconfig'
local configs = require'lspconfig/configs'

configs.els = {
  default_config = {
    cmd = {"ember-language-server","--stdio"};
    filetypes = {"handlebars","html.handlebars"};
    root_dir = function(fname)
      return lspconfig.util.root_pattern("ember-cli-build.js")(fname);
    end;
  };
}

lspconfig.els.setup{}
