local status_ok, dapui = pcall(require, 'dapui')
if not status_ok then
  vim.notify("dapui not found")
  return
end

dapui.setup({
    controls = {
      element = "repl",
      enabled = true,
      icons = {
        disconnect = "",
        pause = "",
        play = "",
        run_last = "",
        step_back = "",
        step_into = "",
        step_out = "",
        step_over = "",
        terminate = ""
      }
    },
    element_mappings = {},
    expand_lines = true,
    floating = {
      border = "single",
      mappings = {
        close = { "q", "<Esc>" }
      }
    },
    force_buffers = true,
    icons = {
      collapsed = "",
      current_frame = "",
      expanded = ""
    },
    layouts = { {
        elements = { {
            id = "scopes",
            size = 0.75
          }, {
            id = "breakpoints",
            size = 0.25
          }, 
					-- {
          --   id = "stacks",
          --   size = 0.25
          -- }, {
          --   id = "watches",
          --   size = 0.25
          -- } 
				},
        position = "left",
        size = 30
      }, {
        elements = {
					{
						id = "console",
						size = 0.8
					},
					{
            id = "repl",
            size = 0.2
          }
				},
        position = "bottom",
        size = 10
      }
		},

    mappings = {
      edit = "e",
      expand = { "<CR>", "<2-LeftMouse>" },
      open = "o",
      remove = "d",
      repl = "r",
      toggle = "t"
    },
    render = {
      indent = 1,
      max_value_lines = 100
    }
  })
