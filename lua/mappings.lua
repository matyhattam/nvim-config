require "nvchad.mappings"

local map = vim.keymap.set

-- add yours here
map({ "n", "t" }, "<leader>tf", function()
  require("nvchad.term").toggle {
    pos = "float",
    id = "floatTerm",
    float_opts = {
      relative = "editor",
      row = 0.15,
      col = 0.15,
      width = 0.7,
      height = 0.6,
      border = "single",
    },
  }
end, { desc = "terminal toggleable floating term" })

map({ "n", "t" }, "<leader>tv", function()
  require("nvchad.term").toggle {
    pos = "vsp",
    id = "vtoggleTerm",
    size = 0.5,
  }
end, { desc = "terminal toggleable vertical term" })

-- Nvim api shortcuts
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true, desc = "Enter normal mode in terminal" })
map("n", "K", vim.lsp.buf.hover, { noremap = true, silent = true, desc = "Display doc in a popup" })
map("n", "<leader>r", vim.lsp.buf.rename, bufopts)
map("n", "U", "<C-r>", { noremap = true, silent = true, desc = "Redo" })
map("n", "<leader>v", ":vs<CR>", { noremap = true, silent = true, desc = "Open a vertical split" })
map("n", "<leader>h", ":sp<CR>", { noremap = true, silent = true, desc = "Open a horizontal split" })
map("n", "<leader>c", ":close<CR>", { noremap = true, silent = true, desc = "Close focused window" })
map("n", "<leader><BS>", ":bd<CR>", { noremap = true, silent = true, desc = "Close current buffer" })
map("n", "<C-q>", ":q<CR>", { noremap = true, silent = true, desc = "Close current buffer" })
map("n", "1", "^", { noremap = true, silent = true, desc = "Go to start or the line in normal mode" })
map("n", "2", "$", { noremap = true, silent = true, desc = "Go to end or the line in normal mode" })
map("v", "1", "^", { noremap = true, silent = true, desc = "Go to start or the line in visual mode" })
map("v", "2", "$", { noremap = true, silent = true, desc = "Go to start or the line in visual mode" })
-- map('i', '<C><Tab>', '<C-e>', { noremap = true, silent = true, desc = "Close the completion popup" })

-- Hop mappings
local hop = require "hop"
hop.setup {
  multi_windows = true,
}
map("", "f", function()
  hop.hint_words()
end, { remap = true, desc = "Hop word" })

-- Telescope mappings
map(
  "n",
  "<space>fd",
  ":Telescope file_browser<CR>",
  { noremap = true, silent = true, desc = "Open Telescope File Browser" }
)
map("n", "<space>fn", ":Telescope notify<CR>", { noremap = true, silent = true, desc = "Open Notify in telescope" })
map("n", "<space>ft", ":TodoTelescope<CR>", { noremap = true, silent = true, desc = "Open Todo-Comments in telescope" })
map(
  "n",
  "<space>tt",
  ":Telescope terms<CR>",
  { noremap = true, silent = true, desc = "Show terminal instances in Telescope" }
)

-- map("n", "<leader>gd", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", { noremap = true })
-- map("n", "<leader>gr", "<cmd>lua require('goto-preview').goto_preview_references()<CR>", { noremap = true })
-- map("n", "<leader>gl", "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>", { noremap = true })
-- map("n", "<leader>gi", "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", { noremap = true })

-- map("n", "gD", vim.lsp.buf.declaration, opts "Go to declaration")
-- map("n", "gd", vim.lsp.buf.definition, opts "Go to definition")
-- map("n", "gi", vim.lsp.buf.implementation, opts "Go to implementation")
-- map("n", "<leader>sh", vim.lsp.buf.signature_help, opts "Show signature help")
-- map("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts "Add workspace folder")
-- map("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts "Remove workspace folder")
-- map("n", "<leader>wl", function()
-- print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
-- end, opts "List workspace folders")
-- map("n", "<leader>D", vim.lsp.buf.type_definition, opts "Go to type definition")
-- map("n", "<leader>ra", require "nvchad.lsp.renamer", opts "NvRenamer")
-- map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts "Code action")
-- map("n", "gr", vim.lsp.buf.references, opts "Show references")
--map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
-- map("i", "<C-e>", "<End>", { desc = "move end of line" })
-- map("i", "<C-h>", "<Left>", { desc = "move left" })
-- map("i", "<C-l>", "<Right>", { desc = "move right" })
-- map("i", "<C-j>", "<Down>", { desc = "move down" })
-- map("i", "<C-k>", "<Up>", { desc = "move up" })
-- map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
-- map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
-- map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
-- map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })
-- map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })
-- map("n", "<C-s>", "<cmd>w<CR>", { desc = "general save file" })
-- map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "general copy whole file" })
-- map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "toggle line number" })
-- map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "toggle relative number" })
-- map("n", "<leader>ch", "<cmd>NvCheatsheet<CR>", { desc = "toggle nvcheatsheet" })
-- map("n", "<leader>fm", function()
--   require("conform").format { lsp_fallback = true }
-- end, { desc = "general format file" })
-- -- global lsp mappings
-- map("n", "<leader>ds", vim.diagnostic.setloclist, { desc = "LSP diagnostic loclist" })
-- map("n", "<leader>b", "<cmd>enew<CR>", { desc = "buffer new" })
-- map("n", "<tab>", function()
--   require("nvchad.tabufline").next()
-- end, { desc = "buffer goto next" })
-- map("n", "<S-tab>", function()
--   require("nvchad.tabufline").prev()
-- end, { desc = "buffer goto prev" })
-- map("n", "<leader>x", function()
--   require("nvchad.tabufline").close_buffer()
-- end, { desc = "buffer close" })
-- map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
-- map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })
-- map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
-- map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })
-- map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
-- map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
-- map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })
-- map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
-- map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
-- map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
-- map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
-- map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
-- map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" })
-- map("n", "<leader>th", function()
--   require("nvchad.themes").open()
-- end, { desc = "telescope nvchad themes" })
-- map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
-- map(
--   "n",
--   "<leader>fa",
--   "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
--   { desc = "telescope find all files" }
-- )
-- -- terminal
-- map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })
-- -- new terminals
-- map("n", "<leader>h", function()
--   require("nvchad.term").new { pos = "sp" }
-- end, { desc = "terminal new horizontal term" })
-- map("n", "<leader>v", function()
--   require("nvchad.term").new { pos = "vsp" }
-- end, { desc = "terminal new vertical term" })
-- -- toggleable
-- map({ "n", "t" }, "<A-v>", function()
--   require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm" }
-- end, { desc = "terminal toggleable vertical term" })
-- map({ "n", "t" }, "<A-h>", function()
--   require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
-- end, { desc = "terminal toggleable horizontal term" })
--
-- map({ "n", "t" }, "<A-i>", function()
--   require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
-- end, { desc = "terminal toggle floating term" })
-- -- whichkey
-- map("n", "<leader>wK", "<cmd>WhichKey <CR>", { desc = "whichkey all keymaps" })
-- map("n", "<leader>wk", function()
--   vim.cmd("WhichKey " .. vim.fn.input "WhichKey: ")
-- end, { desc = "whichkey query lookup" })
