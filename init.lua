local vscode = require('vscode')

-- Default vim configuration
vim.opt.clipboard = 'unnamedplus'

-- Keybindings
vim.keymap.set({"n"}, "<leader>nm", function()
    vscode.call('editor.action.rename')
end)

vim.keymap.set({"n"}, "<leader>cr", function()
    vscode.call('editor.action.refactor')
end)

vim.keymap.set({"n"}, "<leader>ca", function()
    vscode.call('editor.action.quickFix')
end)

vim.keymap.set({"n"}, "<leader>gd", function()
    vscode.call('editor.action.revealDefinition')
end)

vim.keymap.set({"n"}, "<leader>v", function()
    vscode.call('editor.action.selectAll')
end)

vim.keymap.set({"n"}, "<leader>f", function()
    vscode.call('workbench.files.action.focusFilesExplorer')
end)

vim.keymap.set({"n"}, "<leader>g", function()
    vscode.call('actions.find')
end)

vim.keymap.set({"n"}, "<leader>gf", function()
    vscode.call('workbench.action.findInFiles')
end)

vim.keymap.set({"n"}, "<leader>q", function()
    vscode.call('workbench.action.closeActiveEditor')
end)

vim.keymap.set({"n"}, "gt", function()
    vscode.call('workbench.action.nextEditor')
end)

vim.keymap.set({"n"}, "gT", function()
    vscode.call('workbench.action.previousEditor')
end)

