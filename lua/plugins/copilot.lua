-- copilot 
vim.g.coilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.g.copilot_filetypes = {
	["*"] = false,
	["lua"] = true,
	["c"] = true,
	["c++"] = true,
	["go"] = true,
	["python"] = true,
	["make"] = true,
	["ams"] = true,
	["cpp"] = true,
	["sh"] = true,
}
