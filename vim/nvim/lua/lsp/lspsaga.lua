-----------------------------------------------------------
-- lspsaga configuration file
----------------------------------------------------------

-- Plugin: lspsaga
-- url: https://github.com/glepnir/lspsaga.nvim

local status_ok, lspsaga = pcall(require, 'lspsaga')
if not status_ok then
  return
end
lspsaga.init_lsp_saga()

local keymap = require('core/keymaps').keymap

-- Lsp finder find the symbol definition implmement reference
keymap("n", "gh", ":Lspsaga lsp_finder<CR>", { silent = true })

-- Code action
keymap("n", "<leader>ca", ":Lspsaga code_action<CR>", { silent = true })
keymap("v", "<leader>ca", ":<C-U>Lspsaga range_code_action<CR>", { silent = true })

-- Rename
keymap("n", "gr", ":Lspsaga rename<CR>", { silent = true })

-- Definition preview
keymap("n", "gp", ":Lspsaga preview_definition<CR>", { silent = true })

-- Show line diagnostics
keymap("n", "<leader>ld", ":Lspsaga show_line_diagnostics<CR>", { silent = true })

-- Show cursor diagnostic
keymap("n", "<leader>cd", ":Lspsaga show_cursor_diagnostics<CR>", { silent = true })

-- Diagnsotic jump
keymap("n", "[e", ":Lspsaga diagnostic_jump_next<CR>", { silent = true })
keymap("n", "]e", ":Lspsaga diagnostic_jump_prev<CR>", { silent = true })

-- Outline
keymap("n","<leader>o", ":LSoutlineToggle<CR>",{ silent = true })

-- Hover Doc
keymap("n", "K", ":Lspsaga hover_doc<CR>", { silent = true })

-- Signature help
keymap("n", "gs", ":Lspsaga signature_help<CR>", { silent = true })

-- local action = require("lspsaga.action")

-- -- scroll in hover doc or definition preview window
-- vim.keymap.set("n", "<C-f>", function()
--     action.smart_scroll_with_saga(1)
-- end, { silent = true })

-- -- scroll in hover doc or definition preview window
-- vim.keymap.set("n", "<C-b>", function()
--     action.smart_scroll_with_saga(-1)
-- end, { silent = true })

-- -- Only jump to error
-- keymap("n", "[E", function()
--   require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
-- end, { silent = true })
-- keymap("n", "]E", function()
--   require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
-- end, { silent = true })
