local dap = require('dap')

dap.adapters['pwa-node'] = {
   type = 'server',
   host = 'localhost',
   port = '${port}',
   executable = {
      command = vim.fn.exepath('js-debug-adapter'),
      args = { '${port}' },
   },
}

for _, language in pairs({ 'typescript', 'javascript' }) do
   dap.configurations[language] = {
      {
         type = 'pwa-node',
         request = 'launch',
         name = 'Launch file',
         program = '${file}',
         cwd = '${workspaceFolder}',
      },
   }
end
