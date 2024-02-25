local M = {}

M.hello = function()
  print('Hello da my funcs')
end

M.reopen = function()
  local path = vim.api.nvim_buf_get_name(0)
  vim.api.nvim_command("bd")
  vim.api.nvim_command("e " ..path)
end

M.print_path = function()
  local path = vim.api.nvim_buf_get_name(0)
  print(path)
  local cmd = "echo \"" ..path .."\" | clip"
  vim.fn.system(cmd)
end

return M


