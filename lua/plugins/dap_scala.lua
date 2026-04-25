return {
  {
    'mfussenegger/nvim-dap',
    config = function()
      local dap = require 'dap'

      dap.configurations.scala = {
        {
          type = 'scala',
          request = 'launch',
          name = 'Run current file',
          metals = {
            runType = 'runOrTestFile',
          },
        },
        {
          type = 'scala',
          request = 'launch',
          name = 'Test current file',
          metals = {
            runType = 'testFile',
          },
        },
        {
          type = 'scala',
          request = 'launch',
          name = 'Test target',
          metals = {
            runType = 'testTarget',
          },
        },
      }
    end,
  },
  {
    'scalameta/nvim-metals',
    ft = { 'scala', 'sbt', 'java' },
    config = function()
      require('metals').setup_dap()
    end,
  },
}
