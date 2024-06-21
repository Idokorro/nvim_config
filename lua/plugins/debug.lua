return {
    {
        'theHamsta/nvim-dap-virtual-text',
        opts = {}
    },
    {
        'nvim-neotest/nvim-nio'
    },
    {
        'rcarriga/nvim-dap-ui',
        dependencies = {
            'mfussenegger/nvim-dap'
        },
        config = function()
            local dap, dapui = require("dap"), require("dapui")
            dapui.setup()
            dap.listeners.before.attach.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                dapui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                dapui.close()
            end
        end
    },
    {
        'mfussenegger/nvim-dap'
    },
    {
        'mfussenegger/nvim-dap-python',
        ft = 'python',
        dependencies = {
            'mfussenegger/nvim-dap',
            'rcarriga/nvim-dap-ui'
        },
        config = function()
            local path = ''
            local handle = io.popen('which python3')
            if (handle ~= nil or handle ~= '') then
                local result = handle:read("*a")
                if (result ~= nil or result ~= '') then
                    path = string.gsub(result, '%s+', '')
                end
                handle:close()
            end

            require('dap-python').setup(path)
        end
    }
}
