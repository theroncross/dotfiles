-- escape terminal codes
local function t(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function _G.smart_tab()
    return vim.fn.pumvisible() == 1 and t'<C-n>' or t'<Tab>'
end

vim.api.nvim_set_keymap('i', '<Tab>', 'v:lua.smart_tab()', {expr = true, noremap = true})

-- EDITOR
vim.o.syntax = 'on'             -- Turn on syntax highlighting.
vim.o.termguicolors = true
vim.o.encoding = 'utf-8'
vim.o.guifont = 'Cascadia Code'
vim.o.incsearch = true        -- Enable incremental search
vim.o.ignorecase = true        -- case-insensitive on lowercase search
vim.o.smartcase = true         -- case-sensitive on uppercase search term
vim.o.number = true            -- show line numbers
vim.o.relativenumber = true
vim.o.wrap = true              -- wrap long lines
vim.o.linebreak = true         -- breaks lines on words
vim.o.list = true              -- Display different types of white spaces.
vim.o.listchars = [[tab:›\ ,trail:•,extends:#,nbsp:.]]
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.modelines = 0       -- Turn off modelines
vim.o.signcolumn = 'yes'    -- Constant width left column
vim.o.colorcolumn = '80'
vim.o.scrolloff = 3       -- minimum lines to keep above and below cursor

-- ---STATUSLINE---
vim.o.laststatus = 2      -- Always display status line
vim.o.showmode = true
vim.o.statusline = [[%F%m%r%h%w\ [POS=%l/%L,%v][%p%%]\ [b:%n] ]]
vim.g.airline_theme = 'codedark'

-- ---COMMAND---
vim.o.cmdheight = 2       -- Give more space for displaying messages.
vim.o.showcmd = true          -- Show active command on bottom line

-- ---WINDOWS---
vim.o.splitbelow = true       -- Add split window below
vim.o.splitright = true        -- Add vsplit window to right

-- ---MISC---
-- vim.o.nocompatible = true      -- Set compatibility to Vim only.
vim.o.undofile = true          -- save undo files
vim.o.undodir = [[$HOME/.vim/undo-history]]
vim.o.undolevels = 1000
vim.o.undoreload = 1000
-- vim.o.nobackup = true         -- Some servers have issues with backup files
-- vim.o.nowritebackup = true
-- vim.o.noswapfile = true

-- Helps force plug-ins to load correctly when it is turned back on below.
-- vim.o.filetype = 'off'

-- For plug-ins to load correctly.
-- vim.o.filetype.plugin.indent = 'on'

-- Manual Syntaxes / Filetypes
vim.api.nvim_command('autocmd BufNewFile,BufRead *.hbs setfiletype handlebars')

vim.o.switchbuf = 'usetab,newtab' -- Open Quickfix links in new tab (or switch to tab if already open)

-- let g:coc_node_path = 'node'
vim.g.ale_fixers = { ['javascript'] = {'prettier', 'eslint'} }
vim.g.ale_javascript_eslint_executable = 'eslint_d'
vim.g.ale_javascript_eslint_use_global = 1

-- enable fix-on-save in Prettier
-- vim.g.prettier#autoformat = 1
-- vim.g.prettier#autoformat_require_pragma = 0
-- when running at every change you may want to disable quickfix
-- let g:prettier#quickfix_enabled = 0

-- enable Rust support
-- vim.o.filetype.plugin.indent = 'on'
vim.g.rustfmt_autosave = 1

vim.g.rg_derive_root = true
