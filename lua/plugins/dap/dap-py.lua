local dap = require('dap')

dap.adapters.python = function(cb, config)
  if config.request == 'attach' then
    ---@diagnostic disable-next-line: undefined-field
    local port = (config.connect or config).port
    ---@diagnostic disable-next-line: undefined-field
    local host = (config.connect or config).host or '127.0.0.1'
    cb({
      type = 'server',
      port = assert(port, '`connect.port` is required for a python `attach` configuration'),
      host = host,
      options = {
        source_filetype = 'python',
      },
    })
  else
    cb({
      type = 'executable',
			-- debug python path
      -- command = '/home/pie/anaconda3/envs/nasim/bin/python',
			command = '/home/buguo/anaconda3/envs/rl/bin/python',
      args = { '-m', 'debugpy.adapter' },
      options = {
        source_filetype = 'python',
      },
    })
  end
end

dap.configurations.python = {
  {
    type = 'python'; -- the type here established the link to the adapter definition: `dap.adapters.python`
    request = 'launch';
    name = "Launch file";
    program = "${file}"; -- This configuration will launch the current file if used.
    pythonPath = function()
       return  '/home/buguo/anaconda3/envs/rl/bin/python'
			 -- return '/usr/bin/python3'
    end;
		env = {PYTHONPATH =  "${workspaceFolder}/.."},
		console = "integratedTerminal" ,
  },
}
