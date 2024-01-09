return {
	"catppuccin/nvim", 
	name = "catppuccin", 
	priority = 1000,
	lazy = false,
	-- NOTE: For the `catppuccin` plugin the `opts` field is not working for setting up 
	--       configuration options, so use require from inside `config` instead.
	--
	-- NOTE: `opts` is used by lazy to set configuration options for a plugin 
	--       `config` is a function that gets called every time a plugin is loaded
	config = function ()
		require("catppuccin").setup({
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			background = {
				light = "latte",
				dark = "mocha",
			},
			transparent_background = false, -- disables setting the background color.
			show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
			term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
			dim_inactive = {
				enabled = false, -- dims the background color of inactive window
				shade = "dark",
				percentage = 0.15, -- percentage of the shade to apply to the inactive window
			},
			no_italic = false, -- Force no italic
			no_bold = false, -- Force no bold
			no_underline = false, -- Force no underline
			styles = {
				comments = { "italic" }, -- Change the style of comments
				conditionals = { "italic" },
				loops = {},
				functions = {},
				keywords = {},
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
				operators = {},
			},
			color_overrides = {
				mocha = {
					base = "#191919", -- Background color
					mantle = "#242424",
					crust = "#9ad6f6",
				},
			},
			custom_highlights = {},
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				notify = false,
				mini = {
					enabled = true,
					indentscope_color = "",
				},
			},
		}
		)

		vim.cmd.colorscheme("catppuccin-mocha")
	end,
}
