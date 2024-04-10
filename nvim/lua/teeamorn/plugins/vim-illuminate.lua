return {
	"RRethy/vim-illuminate",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		-- default configuration
		require("illuminate").configure({
			-- delay: delay in milliseconds
			delay = 0,
		})
	end,
}
