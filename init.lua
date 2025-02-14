local vscode = require('vscode')

vim.opt.clipboard = 'unnamedplus'

local function map(key, command)
    vim.keymap.set("n", key, function() vscode.call(command) end)
end

local keybindings = {
    ["<leader>nm"] = "editor.action.rename",
    ["<leader>cr"] = "editor.action.refactor",
    ["<leader>ca"] = "editor.action.quickFix",
    ["<leader>gd"] = "editor.action.revealDefinition",
    ["<leader>v"]  = "editor.action.selectAll",
    ["<leader>f"]  = "workbench.files.action.focusFilesExplorer",
    ["<leader>g"]  = "actions.find",
    ["<leader>gf"] = "workbench.action.findInFiles",
    ["<leader>q"]  = "workbench.action.closeActiveEditor",
    ["gt"]         = "workbench.action.nextEditor",
    ["gT"]         = "workbench.action.previousEditor",
}

for key, command in pairs(keybindings) do
    map(key, command)
end