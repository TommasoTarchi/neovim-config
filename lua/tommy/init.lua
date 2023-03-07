-- I can write any other lua file in this directory, and to be able
-- to require it in .confing/nvim/init.lua I have to require it
-- here as well (actually in .config/nvim/init.lua it is enough to
-- require this directory)


-- this prints the "hello" message when you open neovim (it's a command that acts "directly" on the settings)
print("Ave!")

-- these are calls to packages
require("tommy.set")
--require("tommy.copilot")
require("tommy.nvimtree")
