local status_ok, configs = pcall(require, 'nvim-treesitter.configs')

if not status_ok then return end

configs.setup {
  ensure_installed = {},
  sync_install = false,
  auto_install = true,
  ignore_install = {},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  autotag = { enable = true },
  autopairs = { enable = true },
}
