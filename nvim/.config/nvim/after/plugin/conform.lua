require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "prettierd" },
		json = { "jq" },
		go = { "gofmt" },
		php = { "phpcbf" },
		rust = { "rustfmt" },
	},
})
