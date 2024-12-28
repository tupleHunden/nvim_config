return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	config = true,
	opts = {
		adapters = {
			anthropic = function()
				return require("codecompanion.adapters").extend("anthropic", {
					schema = {
						model = {
							default = "claude-3-5-sonnet-20241022",
						},
						max_tokens = {
							default = 8192,
						},
						temperature = {
							default = 0.3,
						},
					},
					env = {
						api_key = "",
					},
				})
			end,
		},
		strategies = {
			chat = {
				adapter = "anthropic",
			},
			inline = {
				adapter = "anthropic",
			},
		},
	},
}
