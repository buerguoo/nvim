-- pyright
require("lspconfig").pyright.setup{
	settings = {
		python = {
			analysis = {
				autoSearchPaths = true,
				diagnosticMode = "workspace",
				useLibraryCodeForTypes = true
			} ,
			-- pyright's python path
			pythonPath = "/home/buguo/anaconda3/envs/rl/bin/python"
		}
	},
	-- root directory
	-- root_dir = function ()
	-- 	return "/home/pie/Documents/Program/Python/Nasim/" -- a local project name
	-- end
}
