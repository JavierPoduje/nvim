local finders = {}

finders.browse_utils = function()
  local opts = {
    results_title = '~ Utils ~',
    cwd = '~/Documents/.utils/',
    previewer = false,
    prompt_title = false,
    layout_strategy = 'vertical',
    layout_config = {
      width = 0.6,
      height = 0.3
    }
  }
  require'telescope.builtin'.file_browser(opts)
end

-- TODO: add function to delete branches from telescope
-- finders.delete_branch

return finders
