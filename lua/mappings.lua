require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
map({ "n", "t" }, "<leader>tt", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "terminal toggle floating term" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "K", vim.lsp.buf.hover, { noremap = true, silent = true })
map("n", "<leader>r", vim.lsp.buf.rename, bufopts)
map('n', 'U', '<C-r>', { noremap = true, silent = true })
map('n', '<leader>v', ':vs<CR>', { noremap = true, silent = true })
map('n', '<leader>h', ':sp<CR>', { noremap = true, silent = true })
map('n', '<leader>c', ':close<CR>', { noremap = true, silent = true })
map('n', '1', '0', { noremap = true, silent = true })
map('n', '2', '$', { noremap = true, silent = true })

-- Hop mappings
local hop = require "hop"
hop.setup{
  multi_windows = true,
}
map("", "f", function()
  hop.hint_words()
end, { remap = true })

map("n", "<space>fd", ":Telescope file_browser<CR>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
