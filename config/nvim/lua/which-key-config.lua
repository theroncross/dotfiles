local wk = require("which-key")
wk.setup {}
wk.register({
  g = {
    name = 'lsp',
    d = { "<cmd>lua vim.lsp.buf.definition()<CR>",      "goto definition"     },
    D = { "<cmd>lua vim.lsp.buf.declaration()<CR>",     "goto declaration"    },
    i = { "<cmd>lua vim.lsp.buf.implementation()<CR>",  "goto implementation" },
    r = { "<cmd>lua vim.lsp.buf.references()<CR>",      "goto references"     },
  },
  K = { "<cmd>lua vim.lsp.buf.hover()<CR>",             "show hover"          },
  -- nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>

  ["<leader>"] = {
    ["-"] = { ":vertical resize -5<CR>",                      "-5 height"       },
    ["="] = { ":vertical resize +5<CR>",                      "+5 height"       },
    ["["] = { "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>",  "next diagnostic" },
    ["]"] = { "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>",  "prev diagnostic" },
    a     = { "<cmd>lua vim.lsp.buf.code_action()<CR>",       "code action"     },
    e     = { ":NvimTreeToggle<CR>",                          "toggle tree"     },
    p     = { ":PrettierAsync<CR>",                           "format file"     },
    b = {
      name  = "+buffer",
      d     = { ":bd<CR>",        "close"     },
      f     = { ":bfirst<CR>",    "first"     },
      l     = { ":blast<CR>",     "last"      },
      n     = { ":bnext<CR>",     "next"      },
      p     = { ":bprevious<CR>", "previous"  },
    },
    f = {
      name = "+find",
      b = { "<cmd>lua require('telescope.builtin').buffers()<cr>",    "buffers" },
      f = { "<cmd>lua require('telescope.builtin').find_files()<cr>", "files"   },
      g = { "<cmd>lua require('telescope.builtin').live_grep()<cr>",  "grep"    },
      h = { "<cmd>lua require('telescope.builtin').help_tags()<cr>",  "help"    },
    },
    g = {
      name = "+git",
      a = { ":GitGutterStageHunk",      "stage hunk"    },
      g = { ":G",                       "git status"    },
      h = { ":diffget //2",             "keep ours"     },
      l = { ":diffget //3",             "use theirs"    },
      n = { ":GitGutterNextHunk",       "next hunk"     },
      p = { ":GitGutterPrevHunk",       "previous hunk" },
      s = { ":GitGutterStageHunk",      "stage hunk"    },
    },
    w = {
      name = "+window",
      h = { ":wincmd h<CR>",  "left"  },
      j = { ":wincmd j<CR>",  "down"  },
      k = { ":wincmd k<CR>",  "up"    },
      l = { ":wincmd l<CR>",  "right" },
      o = { ":only<CR>",      "only"  },
      q = { ":wincmd q<CR>",  "close" },
    }
  }
})

