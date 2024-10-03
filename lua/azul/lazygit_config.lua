local setg = vim.g

setg.lazygit_floating_window_winblend = 0 -- transparency
setg.lazygit_floating_window_scaling_factor = 0.9 -- scaling factor
setg.lazygit_floating_window_border_chars = {'╭','─', '╮', '│', '╯','─', '╰', '│'} -- window borders
setg.lazygit_floating_window_use_plenary = 0 -- use plenary.nvim to manage floating window if available
setg.lazygit_use_neovim_remote = 0 -- use neovim-remote

setg.lazygit_use_custom_config_file_path = 0 -- config file path is evaluated if this value is 1
setg.lazygit_config_file_path = '' -- custom config file path
setg.lazygit_config_file_path = {} -- list of custom config file paths
