return {
	"RRethy/vim-illuminate",
	config = function()
		-- default configuration
		require("illuminate").configure({
			-- delay: delay in milliseconds
			delay = 0,
		})
	end,
}
