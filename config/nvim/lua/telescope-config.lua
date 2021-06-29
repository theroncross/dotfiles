require("telescope").setup{
  file_ignore_patterns = {
    "**/node_modules/**",
    "**/dist/**",
    "**/.vim/undo-history/**",
    "**/lib/**",
    "**/public/**",
    "**/package-lock.json"
  }
}
