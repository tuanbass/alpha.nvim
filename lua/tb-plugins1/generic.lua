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

return M
