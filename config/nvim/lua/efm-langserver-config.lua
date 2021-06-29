local lspconfig = require 'lspconfig'

local eslint = {
  lintCommand = "eslint_d -f unix --stdin --stdin-filename ${INPUT}",
  lintStdin = true,
  lintFormats = {"%f:%l:%c: %m"},
  lintIgnoreExitCode = true,
  formatCommand = "eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}",
  formatStdin = true
}

local jsPrettier = {
  formatCommand = ([[
      node_modules/.bin/prettier
      ${--config-precedence:configPrecedence}
      ${--tab-width:tabWidth}
      ${--single-quote:singleQuote}
      ${--trailing-comma:trailingComma}
  ]]):gsub(
      "\n",
      ""
  )
}

local hbsPrettier = {
  formatCommand = ([[
      ./node_modules/.bin/prettier
      ${--config-precedence:configPrecedence}
      ${--tab-width:tabWidth}
      ${--single-quote:"false"}
      ${--endOfLine:"auto"}
      --parser glimmer
  ]]):gsub(
      "\n",
      ""
  )
}

require "lspconfig".efm.setup {
  init_options = {documentFormatting = true},
  filetypes = {"javascript", "typescript", "handlebars"},
  -- root_dir = function(fname)
  --   return lspconfig.util.root_pattern("tsconfig.json")(fname) or
  --   lspconfig.util.root_pattern(".eslintrc.js", ".git")(fname);
  -- end,
  settings = {
    rootMarkers = {".git/"},
    languages = {
      javascript = {jsPrettier, eslint},
      typescript = {jsPrettier, eslint},
      handlebars = {hbsPrettier},
    }
  }
}
