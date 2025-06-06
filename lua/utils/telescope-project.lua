local M = {}

M.project_files = function()
  local opts = { show_untracked = true }
  local ok = pcall(require("telescope.builtin").git_files, opts)
  if not ok then
    require("telescope.builtin").find_files(opts)
  end
end

return M
