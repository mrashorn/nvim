-- This section here is used to ignore the warning we get that require("lspconfig") is soon deprecated. 
-- eventually neovim wants us to use the vim.lsp.config but it's not working yet easily
-- Save the original notify function
local original_notify = vim.notify

-- Override vim.notify
vim.notify = function(msg, log_level, opts)
	if type(msg) == "string" and msg:match("lspconfig") and msg:match("deprecated") then
	  return
	end
  -- Otherwise call original notify
  original_notify(msg, log_level, opts)
end
-- end warning suppression of deprecated require("lspconfig")




-- begin normal init.lua 
-- load core settings
require("core.plugins")
require("core.options")
require("core.keymaps")

-- load plugin configs
require("plugins.cmp")
require("plugins.lsp")
require("plugins.treesitter")
require("plugins.telescope")


