require("aj.packer")
require("aj.remap")
require("aj.set")
require("dotenv").setup({
    path = vim.fn.stdpath("config") .. "/.env"
})
