-- escape terminal codes
local function t(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function _G.smart_tab()
    return vim.fn.pumvisible() == 1 and t'<C-n>' or t'<Tab>'
end

vim.api.nvim_set_keymap('i', '<Tab>', 'v:lua.smart_tab()', {expr = true, noremap = true})

-- EDITOR
vim.o.colorcolumn = '80'
vim.o.expandtab = true
vim.o.guifont = 'Cascadia Code'
vim.o.ignorecase = true         -- case-insensitive on lowercase search
vim.o.linebreak = true          -- breaks lines on words
vim.o.list = true               -- Display different types of white spaces.
vim.o.modelines = 0             -- Turn off modelines
vim.o.number = true             -- show line numbers
vim.o.relativenumber = true
vim.o.scrolloff = 2             -- minimum lines to keep above and below cursor
vim.o.shiftwidth = 2
vim.o.signcolumn = 'yes'        -- Constant width left column
vim.o.smartcase = true          -- case-sensitive on uppercase search term
vim.o.syntax = 'on'             -- Turn on syntax highlighting.
vim.o.tabstop = 2
vim.o.termguicolors = true
vim.o.wrap = true               -- wrap long lines
vim.o.wrapscan = false

-- ---COMMAND---
vim.o.cmdheight = 2             -- Give more space for displaying messages.

-- ---WINDOWS---
vim.o.splitbelow = true         -- Add split window below
vim.o.splitright = true         -- Add vsplit window to right

-- ---MISC---
vim.o.undofile = true           -- save undo files
vim.o.undodir = [[$HOME/.vim/undo-history]]
vim.o.undolevels = 1000
vim.o.undoreload = 1000

-- Manual Syntaxes / Filetypes
vim.api.nvim_command('autocmd BufNewFile,BufRead *.hbs setfiletype handlebars')

vim.o.switchbuf = 'usetab,newtab' -- Open Quickfix links in new tab (or switch to tab if already open)

vim.g.ale_fixers = { ['javascript'] = {'prettier', 'eslint'} }
vim.g.ale_javascript_eslint_executable = 'eslint_d'
vim.g.ale_javascript_eslint_use_global = 1

-- enable fix-on-save in Prettier
-- vim.g.prettier#autoformat = 1
-- vim.g.prettier#autoformat_require_pragma = 0

-- enable Rust support
vim.g.rustfmt_autosave = 1

vim.g.rg_derive_root = true