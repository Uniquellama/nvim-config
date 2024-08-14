require("config.lazy")

vim.opt.number = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.cursorline = true

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("i", "kj", "<Esc>", {})
vim.keymap.set("i", "jk", "<Esc>", {})
vim.keymap.set("i", "kk", "<Esc>", {})
vim.keymap.set("i", "jj", "<Esc>", {})
