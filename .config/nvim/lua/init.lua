-- Tree-shitter config
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "bash", "dockerfile", "go", "hcl", "html", "java", "json", "make", "markdown", "python", "regex", "vim", "yaml" },
  sync_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

-- Telescope config
require("telescope").setup {
  defaults = {
    initial_mode = "normal"
  },
  extensions = {
    file_browser = {
      hijack_netrw = true,
    },
  },
}
require("telescope").load_extension "file_browser"

-- Bufferline config
require("bufferline").setup{}
