AutoZellCmd = {}

vim.api.nvim_create_user_command('AutoZellSet', function()
  local string_cmd = vim.fn.input 'Command: '
  local cmd = vim.split(string_cmd, ' ')
  local zell_cmd = { 'zellij', 'run', '--' }
  for _, arg in ipairs(cmd) do
    table.insert(zell_cmd, arg)
  end
  AutoZellCmd = zell_cmd
  vim.fn.jobstart(AutoZellCmd)
end, {})

vim.api.nvim_create_user_command('AutoZellRun', function()
  vim.fn.jobstart(AutoZellCmd)
end, {})
