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

return M
