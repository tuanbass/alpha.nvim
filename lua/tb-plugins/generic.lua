local M = {}
function M.load()
    vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
    -- Preset some font 
    -- vim.opt.guifont = "monospace:h13" 
    -- vim.opt.guifont = "JetBrainsMono:h13"
    vim.opt.guifont = "Source Code Pro:h12"
    -- vim.opt.guifont = "Material Design Icons:h13"
    -- vim.opt.guifont = "Fira Code:h13"
    vim.opt.list = true
    vim.opt.listchars:append("eol:↴")

    --folding
    vim.opt.foldmethod = "expr" -- folding set to "expr" for treesitter based folding
    vim.opt.foldexpr = "nvim_treesitter#foldexpr()" -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
    vim.opt.foldlevelstart = 3
  -- print(inspect(lvim.plugins))
end
M.plugins = {
    {
      'rmagatti/session-lens',
      requires = {'rmagatti/auto-session', 'nvim-telescope/telescope.nvim'},
      config = function()
        require('session-lens').setup({--[[your custom config--]]})
      end
    },
    { 'sudormrfbin/cheatsheet.nvim',
      requires = {
        {'nvim-telescope/telescope.nvim'},
        {'nvim-lua/popup.nvim'},
        {'nvim-lua/plenary.nvim'},
      }
    },
    {"machakann/vim-sandwich"},

}
return M





-- list of not use plugin



    -- -- { "justinmk/vim-sneak" },
    -- -- {"jce/vim-orgmode"},require('orgmode').setup{}
    -- {"zefei/vim-wintabs"},
    -- {"gcmt/taboo.vim"},
    -- {
    -- "glacambre/firenvim",
    -- },
    -- {'nvim-orgmode/orgmode',
    --   config = function()
    --         require('orgmode').setup_ts_grammar()
    --         require'nvim-treesitter.configs'.setup {
    --           -- If TS highlights are not enabled at all, or disabled via `disable` prop, highlighting will fallback to default Vim syntax highlighting
    --           highlight = {
    --             enable = true,
    --             disable = {'org'}, -- Remove this to use TS highlighter for some of the highlights (Experimental)
    --             additional_vim_regex_highlighting = {'org'}, -- Required since TS highlighter doesn't support all syntax features (conceal)
    --           },
    --           ensure_installed = {'org'}, -- Or run :TSUpdate org
    --         }
    --         require('orgmode').setup({
    --           org_agenda_files = {'~/org-work/*', '~/org-work/**/*'},
    --           org_default_notes_file = '~/org-work/refile.org',
    --         })
    --   endtrên
    -- },

      --- j
    -- {"https://gitlab.com/yorickpeterse/nvim-window" },

    -- {
    --   'kdheepak/tabline.nvim',
    --   config = function()
    --     require'tabline'.setup {
    --       enable = true,
    --       options = {
    --       -- If lualine is installed tabline will use separators configured in lualine by default.
    --       -- These options can be used to override those settings.
    --         section_separators = {'', ''},
    --         component_separators = {'', ''},
    --         -- max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
    --         show_tabs_always = true, -- this shows tabs only when there are more than one tab or if the first tab is named
    --         show_devicons = false, -- this shows devicons in buffer section
    --         show_bufnr = true, -- this appends [bufnr] to buffer section,
    --         show_filename_only = true, -- shows base filename only instead of relative path in filename
    --         modified_icon = "+ ", -- change the default modified icon
    --         modified_italic = true, -- set to true by default; this determines whether the filename turns italic if modified
    --       }

    --     }
    --   end,
    --   requires = {'hoob3rt/lualine.nvim', 'kyazdani42/nvim-web-devicons'}

    -- },
        -- {
    --     'crispgm/nvim-tabline',
    --     config = function()
    --         require('tabline').setup({})
    --     end,
    -- },


