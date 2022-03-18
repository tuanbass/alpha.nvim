local M = {}
function M.load()
    lvim.builtin.bufferline.active = true
    lvim.builtin.bufferline.highlights["buffer_selected"] = {
        gui = "bold",
        guifg = 'LightRed',
        guibg = 'Green'
    }
  -- print(inspect(lvim.plugins))
end
M.plugins = {
    { "lukas-reineke/indent-blankline.nvim",
      config = function()
            require('indent_blankline').setup{}
      end
    },
    {"TaDaa/vimade"}, -- highlight active window

}
return M
