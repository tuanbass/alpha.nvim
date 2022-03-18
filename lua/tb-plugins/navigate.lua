local M = {}
function M.load()
  -- print(inspect(lvim.plugins))
end
M.plugins = {
    {"simrat39/symbols-outline.nvim"},
    {'kevinhwang91/nvim-bqf', ft = 'qf'},
    { 'anuvyklack/pretty-fold.nvim',
       config = function()
          -- preview using 'h', open fold using 'l'
          require('pretty-fold').setup{}
          require('pretty-fold.preview').setup()
       end
    },
    { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' },
    {"Pocco81/TrueZen.nvim",
       config = function()
        require("true-zen").setup({
           modes = {
            ataraxis = {
              quit = "untoggle",
            },
            focus = {
              margin_of_error = 5,
              focus_method = "experimental"
            },
          }
        })
      end
    },
     { 'rmagatti/goto-preview',
       config = function()
         require('goto-preview').setup {}
       end
     },
    {"phaazon/hop.nvim",
      config = function()
          -- you can configure Hop the way you like here; see :h hop-config
          require'hop'.setup { }
        end
    },


}

return M
