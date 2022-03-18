local M = {}
function M.load()
    vim.g.copilot_no_tab_map = true
    vim.cmd([[
            imap <silent><script><expr> <C-a> copilot#Accept("\<C-a>")
            set confirm

    ]])

    vim.cmd[[
          set guioptions-=e " Use showtabline in gui vim
          set sessionoptions+=tabpages,globals " store tabpages and globals in session
          command! BufferKillForce lua require('lvim.core.bufferline').buf_kill('bd'),
        ]]
  -- print(inspect(lvim.plugins))
end
M.plugins = 
{

    {"github/copilot.vim"},
    {"f-person/git-blame.nvim"},
    {"TimUntersberger/neogit",
      config = function()
        require('neogit').setup({--[[your custom config--]]
          integrations = {
            diffview = true
          },
        })
      end
    },
    {'theHamsta/nvim-dap-virtual-text',
      config = function()
        -- you can configure Hop the way you like here; see :h hop-config
        require'nvim-dap-virtual-text'.setup {
            enabled = true,                     -- enable this plugin (the default)
            enabled_commands = true,            -- create commands DapVirtualTextEnable, DapVirtualTextDisable, DapVirtualTextToggle, (DapVirtualTextForceRefresh for refreshing when debug adapter did not notify its termination)
            highlight_changed_variables = true, -- highlight changed values with NvimDapVirtualTextChanged, else always NvimDapVirtualText
            highlight_new_as_changed = false,   -- highlight new variables in the same way as changed variables (if highlight_changed_variables)
            show_stop_reason = true,            -- show stop reason when stopped for exceptions
            commented = false,                  -- prefix virtual text with comment string
            -- experimental features:
            virt_text_pos = 'eol',              -- position of virtual text, see `:h nvim_buf_set_extmark()`
            all_frames = false,                 -- show virtual text for all stack frames not only current. Only works for debugpy on my machine.
            virt_lines = false,                 -- show virtual lines instead of virtual text (will flicker!)
            virt_text_win_col = nil             -- position the virtual text at a fixed window column (starting from the first text column) ,
                                        -- e.g. 80 to position at column 80, see `:h nvim_uf_set_extmark()`
        }
      end
    },

     { 'rmagatti/goto-preview',
       config = function()
         require('goto-preview').setup {}
       end
     },

  }
return M
