
-- "gc" to comment visual regions/lines
return {
  "numToStr/Comment.nvim",
  opts = {
    -- add any options here
  },

  config = function()
    local ft = require("Comment.ft")
    ft.set("templ", "//%s")
    ft.set("reason", "//%s")
    require("Comment").setup()
  end,
  lazy = false,
}