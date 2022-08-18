-----------------------------------------------------------
-- neogit configuration file
----------------------------------------------------------

-- Plugin: neogit
-- url: https://github.com/TimUntersberger/neogit

local status_ok, neogit = pcall(require, 'neogit')
if not status_ok then
  return
end

neogit.setup({
  integrations = {
    -- Neogit only provides inline diffs. If you want a more traditional way to look at diffs, you can use `sindrets/diffview.nvim`.
    -- The diffview integration enables the diff popup, which is a wrapper around `sindrets/diffview.nvim`.
    --
    -- Requires you to have `sindrets/diffview.nvim` installed.
    -- use {
    --   'TimUntersberger/neogit',
    --   requires = {
    --     'nvim-lua/plenary.nvim',
    --     'sindrets/diffview.nvim'
    --   }
    -- }
    --
    diffview = true
  },
})
