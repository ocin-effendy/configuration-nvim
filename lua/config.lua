-------- PRETTIER -----------
vim.g['prettier#config#print_width'] = 'auto'
vim.g['prettier#config#tab_width'] = 'auto'
vim.g['prettier#config#use_tabs'] = 'auto'
vim.g['prettier#config#parser'] = 'auto'

----------- AIRLINE -------------
-- vim.g.airline_powerline_fonts = 1

---------- CONFIGURATION -----------
vim.g.tokyonight_transparent = 'true'

---------- COLORSCHEME -----------
 vim.cmd[[colorscheme tokyonight]]

---------- CONFIG ---------------
vim.cmd [[set mouse=a]]
vim.cmd [[set number]]
vim.cmd [[set tabstop=2]]
vim.cmd [[set softtabstop=2]]
vim.cmd [[set shiftwidth=2]]
vim.cmd [[set cursorline]]

--------- NOTIFY -------------
vim.g.notify = require("notify")

--------- BARBAR ------------
vim.g.bufferline = {
  animation = true,
  icon_separator_active = '',
  icon_separator_inactive = '',
}

-------- BLANKLINE ----------
vim.opt.list = true
vim.opt.listchars:append("eol:↴")
