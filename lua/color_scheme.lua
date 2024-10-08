--vim.opt.t_Co = 256
vim.opt.background = "dark"
-- vim.opt.termguicolors = true -- Now is autoenabled in nvim 0.10

-- Monokai scheme
vim.g['sonokai_disable_terminal_colors'] = 1
vim.g['sonokai_better_performance'] = 1
vim.g['sonokai_style'] = "atlantis"
vim.cmd.colorscheme('sonokai')
