local M = {}

local function config_dapi_and_sign()
   local dap_breakpoint = {
    error = {
      text = "🛑",
      texthl = "LspDiagnosticsSignError",
      linehl = "",
      numhl = "",
    },
    rejected = {
      text = "",
      texthl = "LspDiagnosticsSignHint",
      linehl = "",
      numhl = "",
    },
    stopped = {
      text = "",
      texthl = "LspDiagnosticsSignInformation",
      linehl = "DiagnosticUnderlineInfo",
      numhl = "LspDiagnosticsSignInformation",
    },
  }

  vim.fn.sign_define("DapBreakpoint", dap_breakpoint.error)
  vim.fn.sign_define("DapStopped", dap_breakpoint.stopped)
  vim.fn.sign_define("DapBreakpointRejected", dap_breakpoint.rejected)
end

local function config_dapui()

	-- add  external terminal
  local dap = require('dap')
  dap.defaults.fallback.external_terminal = {
    command = '/usr/bin/tmux';
    args = {'-e'};
  }
  -- dap.defaults.fallback.force_external_terminal = true
  dap.defaults.fallback.focus_terminal = true

  local dapui = require "dap"

  local debug_open = function()
    dapui.open()
		-- dap.defaults.fallback.terminal_win_cmd = '30vsplit new' -- this will be overrided by dapui
    -- vim.api.nvim_command("DapVirtualTextEnable")
    vim.api.nvim_command("NvimTreeClose")
  end
  local debug_close = function()
    dap.repl.close()
    dapui.close()
    -- vim.api.nvim_command("DapVirtualTextDisable")
    vim.api.nvim_command("bdelete! term:")   -- close debug temrinal
  end

  dap.listeners.after.event_initialized["dapui_config"] = function()
    debug_open()
  end
  dap.listeners.before.event_terminated["dapui_config"] = function()
    debug_close()
  end
  dap.listeners.before.event_exited["dapui_config"]     = function()
    debug_close()
  end
  dap.listeners.before.disconnect["dapui_config"]       = function()
    debug_close()
  end
end

local function config_debuggers()

	-- if chose launch file, then use this config
	require("plugins.dap.dap-py")

  -- load from json file
	-- if chose current file, then use this config from ./vscode/launch.js
	require('dap.ext.vscode').load_launchjs(nil, { cppdbg = { 'cpp' } })

 end

function M.setup()
  config_dapi_and_sign()
  config_dapui()
  config_debuggers() -- Debugger
end

return M
