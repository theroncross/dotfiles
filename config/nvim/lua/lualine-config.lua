require 'lualine'.setup{
  options = {
    theme = 'codedark',
    component_separators = '',
  },
  sections = {
    lualine_a = { {'mode', upper = true} },
    lualine_b = { {'branch', icon = ''} },
    lualine_c = { {
      'filename',
      file_status = false,
      path = 2,
    } },
    lualine_x = { 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location'  },
  },
  inactive_sections = {
    lualine_a = {  },
    lualine_b = {  },
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {  },
    lualine_z = {  }
  },
}
