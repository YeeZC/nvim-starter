local on_change = function(args)
		vim.cmd("colorscheme " .. args.theme)

		vim.api.nvim_set_option("background", args.background)
		require("lualine").setup({
			options = {
				theme = args.theme,
			},
		})
	end
return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    config = function()
      require("kanagawa").setup({
        theme = "dragon", -- Load "wave" theme when 'background' option is not set
        background = { -- map the value of 'background' option to a theme
          dark = "dragon", -- try "dragon" !
          light = "lotus",
        },
      })
    end,
  },
  {
		"f-person/auto-dark-mode.nvim",
		lazy = false,
		config = {
			update_interval = 1000,
			set_dark_mode = function()
        on_change({
					theme = "kanagawa",
					background = "dark",
				})
			end,
			set_light_mode = function()
				on_change({
					theme = "kanagawa",
					background = "light",
				})
			end,
		},
	},
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
      background = "dark",
      icon = {
        misc = {
          dots = "󰇘",
        },
        ft = {
          octo = "",
        },
        dap = {
          Stopped = { "󰁕 ", "DiagnosticWarn", "DapStoppedLine" },
          Breakpoint = " ",
          BreakpointCondition = " ",
          BreakpointRejected = { " ", "DiagnosticError" },
          LogPoint = ".>",
        },
        diagnostics = {
          Error = " ",
          Warn = " ",
          Hint = " ",
          Info = " ",
        },
        git = {
          added = " ",
          modified = " ",
          removed = " ",
        },
        kinds = {
          Array = " ",
          Boolean = "󰨙 ",
          Class = " ",
          Codeium = "󰘦 ",
          Color = " ",
          Control = " ",
          Collapsed = "⏵ ",
          Constant = "󰏿 ",
          Constructor = " ",
          Copilot = " ",
          Enum = " ",
          EnumMember = " ",
          Event = " ",
          Field = " ",
          File = " ",
          Folder = " ",
          Function = "󰊕 ",
          Interface = " ",
          Key = " ",
          Keyword = " ",
          Method = " ",
          Module = " ",
          Namespace = "󰦮 ",
          Null = " ",
          Number = "󰎠 ",
          Object = " ",
          Operator = " ",
          Package = " ",
          Property = " ",
          Reference = " ",
          Snippet = " ",
          String = " ",
          Struct = " ",
          TabNine = "󰏚 ",
          Text = " ",
          TypeParameter = " ",
          Unit = "󰊱 ",
          Value = " ",
          Variable = "󰀫 ",
        },
      },
    },
  },
}
