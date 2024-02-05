return {
  {
    "navarasu/onedark.nvim",
    opts = {
      style = "darker",
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
  {
    "nim-lang/langserver",
    settings = {
      nim = {
        nimsuggestPath = "~/.nimble/bin/custom_lang_server_build",
      },
    },
  },
}
