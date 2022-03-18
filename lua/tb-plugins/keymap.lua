local M = {}
local utils = require("tb-plugins.utils")

function M.load()
    -- keymappings [view all the defaults by pressing <leader>Lk]
    lvim.leader = "space"
    -- add your own keymapping
    -- generic 
    lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
    lvim.keys.normal_mode["<C-g>"] = ":HopChar1<cr>"
    lvim.keys.insert_mode["<C-g>"] = "<Esc>:HopChar1<cr>"
    --  dap debugger
    lvim.keys.normal_mode["<F5>"] = ":lua require'dap'.continue()<cr>"
    lvim.keys.normal_mode["<F10>"] = ":lua require'dap'.step_over()<cr>"
    lvim.keys.normal_mode["<F11>"] = ":lua require'dap'.step_into()<cr>"
    lvim.keys.normal_mode["<C-b>"] = ":lua require'dap'.toggle_breakpoint()<cr>"
  -- print(inspect(lvim.plugins))

    -- Telescope to search 
    lvim.builtin.which_key.mappings["f"] = {
      name = "Find",
      r = { "<cmd>Telescope oldfiles<cr>", "Recent files" },
      f = { "<cmd>Telescope find_files<cr>", "Files" },
      b = { "<cmd>Telescope buffers<cr>", "Buffers" },
      se = { "<cmd>SearchSession<cr>", "Sessions" },
      p = { "<cmd>Telescope projects<cr>", "Projects" },
      g = { "<cmd>Telescope live_grep<cr>", "Grep Text" },
      G = { "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find({ sorter = require('telescope.sorters').get_substr_matcher({})})", "Grep Cur Buffer" }, -- use sub string instead of fuzzy search 
      ch = { "<cmd>Telescope command_history<cr>", "Commands history" },
      cc = { "<cmd>Telescope commands<cr>", "Commands" },
      ss = { "<cmd>Telescope search_history<cr>", "Search history" },
      l  = { "<cmd>Telescope resume<cr>", "Last Search" },
      C = { "<cmd>Cheatsheet<cr>", "Cheatsheet" },
    }

    -- Shortcut for goto_preview
    vim.api.nvim_set_keymap("n", "gPd", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", {noremap=true})
    vim.api.nvim_set_keymap("n", "gPi", "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", {noremap=true})
    vim.api.nvim_set_keymap("n", "gPr", "<cmd>lua require('goto-preview').goto_preview_references()<CR>", {noremap=true})
    vim.api.nvim_set_keymap("n", "gPc", "<cmd>lua require('goto-preview').close_all_win()<CR>", {noremap=true})

    -- Add some misc menu 
    lvim.builtin.which_key.mappings["g"]=utils.mergeTable(lvim.builtin.which_key.mappings["g"],
    {
      name = "Git",
      g = { "<cmd>Neogit<cr>", "Neogit" },
    })
    lvim.builtin.which_key.mappings["j"]=utils.mergeTable(lvim.builtin.which_key.mappings["j"],
    {
      name = "Jump",
      l = { "<cmd>HopLine<cr>", "Line" },
      c = { "<cmd>HopChar1<cr>", "Char" },
      w = { "<cmd>HopWord<cr>", "Word" },
    })
    lvim.builtin.which_key.mappings["z"]=utils.mergeTable(lvim.builtin.which_key.mappings["z"],
    {
      name = "Zoom",
      a = { "<cmd>TZAtaraxis<cr>", "Ataraxis" },
      m = { "<cmd>TZMinimalist<cr>", "Minimal" },
      f = { "<cmd>TZFocus<cr>", "Focus" },
    })

    lvim.builtin.which_key.mappings["C"] = { "<cmd>BufferKillForce<CR>", "Close Buffer!" }
    lvim.builtin.which_key.mappings["E"] = {
        name = "Debug",
        l = { "<>lua require'dap'.list_breakpoints()<cr>", "List Breakpoints" },
    }
    lvim.builtin.which_key.mappings["d"]= -- mergeTable(lvim.builtin.which_key.mappings["d"],
      {
        l = { ":lua require'dap'.list_breakpoints()<cr>", "List Breakpoints" },
      }--)
end
M.plugins = {
    { "tuanbass/cutlass.nvim", -- fork and change it, as I dont want to remap "s" and "S" which conflict with the vim-sandwich
      config = function()
        require("cutlass").setup({
            cut_key = "m"
        })
     end,
    },

}
return M
