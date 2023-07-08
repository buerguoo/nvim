vim.g.mapleader = ","

local keymap = vim.keymap

-- split window
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")

-- no highlight
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- change buffer
keymap.set("n", "<leader>l", ":bnext<CR>")
keymap.set("n", "<leader>h", ":bprevious<CR>")
keymap.set("n", "<leader>x", ":bdelete<CR>")

-- lsp keymaps
keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>")

-- Code action
keymap.set({"n","v"}, "<leader>ca", "<cmd>Lspsaga code_action<CR>")

-- Rename all occurrences of the hovered word for the entire file
keymap.set("n", "gr", "<cmd>Lspsaga rename<CR>")

-- Rename all occurrences of the hovered word for the selected files
keymap.set("n", "gr", "<cmd>Lspsaga rename ++project<CR>")

-- Peek definition
keymap.set("n", "gD", "<cmd>Lspsaga peek_definition<CR>")

-- Go to definition
keymap.set("n","gd", "<cmd>Lspsaga goto_definition<CR>")

-- Peek type definition
keymap.set("n", "gt", "<cmd>Lspsaga peek_type_definition<CR>")

-- Go to type definition
keymap.set("n","gt", "<cmd>Lspsaga goto_type_definition<CR>")


-- Show line diagnostics
-- You can pass argument ++unfocus to
-- unfocus the show_line_diagnostics floating window
-- keymap.set("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>")

-- Show buffer diagnostics
-- keymap.set("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>")

-- Show workspace diagnostics
-- keymap.set("n", "<leader>sw", "<cmd>Lspsaga show_workspace_diagnostics<CR>")

-- Show cursor diagnostics
keymap.set("n", "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>")

-- Diagnostic jump
keymap.set("n", "gp", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
keymap.set("n", "gn", "<cmd>Lspsaga diagnostic_jump_next<CR>")


-- Toggle outline
-- keymap.set("n","<leader>o", "<cmd>Lspsaga outline<CR>")

-- Show hover doc
keymap.set("n", "gi", "<cmd>Lspsaga hover_doc<CR>")

-- Show hover doc and keep it
keymap.set("n", "gi", "<cmd>Lspsaga hover_doc ++keep<CR>")

-- Call hierarchy
-- keymap.set("n", "<Leader>ci", "<cmd>Lspsaga incoming_calls<CR>")
-- keymap.set("n", "<Leader>co", "<cmd>Lspsaga outgoing_calls<CR>")

-- Floating terminal
keymap.set({"n", "t"}, "<leader>tt", "<cmd>Lspsaga term_toggle<CR>")

--SymbolsOutline
vim.api.nvim_set_keymap("n", "<leader>z", "<cmd>SymbolsOutline<CR>", {silent = true, noremap = true})


-- dap
keymap.set({"i", "n", "v"}, "<leader>r", "<cmd>lua require'dap'.continue()<CR>", {silent = false, noremap = true})
keymap.set({"i", "n", "v"}, "<leader>m", "<cmd>lua require'dap'.step_over()<CR>", {silent = true, noremap = true})
keymap.set({"i", "n", "v"}, "<leader>n", "<cmd>lua require'dap'.step_into()<CR>", {silent = true, noremap = true })
keymap.set({"i", "n", "v"}, "<leader>ot", "<cmd>lua require'dap'.step_out()<CR>", {silent = true, noremap = true})
keymap.set({"i", "n", "v"}, "<leader>b", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", {silent = true, noremap = true})
keymap.set("n", "<leader>tm", "<cmd>lua require'dap'.terminate()<cr>")
keymap.set("n", "K", "<cmd>lua require'dapui'.eval()<cr>")


-- chatpgt 
keymap.set({"i", "n", "v"}, "<leader>gi", "<cmd>lua require'chatgpt'.edit_with_instructions()<CR>")
keymap.set({"i", "n", "v"}, "<leader>gc", "<cmd>lua require'chatgpt'.openChat()<CR>")
