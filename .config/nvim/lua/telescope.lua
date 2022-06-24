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

