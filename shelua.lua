local os = require("os")
meta = {__index = 
	function(_, idx) 
		return function(args) 
			if not args then
				os.execute(idx)
			else
				os.execute(idx.." "..args)
			end
		end 
	end}
setmetatable(_G, meta)
