return {
    {
        "mfussenegger/nvim-dap",
        config = function()
            local dap = require("dap")

            -- Add default Python debugging configurations
            dap.configurations.python = {
                {
                    type = "python",
                    request = "launch",
                    name = "Launch file",
                    program = "${file}", -- Debug the current file
                    pythonPath = function()
                        local cwd = vim.fn.getcwd()
                        if vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
                            return cwd .. "/venv/bin/python"
                        elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
                            return cwd .. "/.venv/bin/python"
                        else
                            return vim.fn.input("Python path: ", "python", "file")
                        end
                    end,
                },
            }
        end,
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = { "mfussenegger/nvim-dap" },
        config = function()
            local dapui = require("dapui")

            dapui.setup({
                controls = {
                    enabled = true,
                    icons = {
                        pause = "⏸",
                        play = "▶",
                        step_into = "➤",
                        step_over = "⏭",
                        step_out = "⬆",
                        terminate = "⏹",
                    },
                },
                layouts = {
                    {
                        elements = {
                            { id = "scopes",      size = 0.25 },
                            { id = "breakpoints", size = 0.25 },
                            { id = "stacks",      size = 0.25 },
                            { id = "watches",     size = 0.25 },
                        },
                        size = 40,
                        position = "left",
                    },
                    {
                        elements = {
                            { id = "repl",    size = 0.5 },
                            { id = "console", size = 0.5 },
                        },
                        size = 10,
                        position = "bottom",
                    },
                },
            })

            -- Automatically open/close dap-ui during debug sessions
            local dap = require("dap")
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end
            -- dap.listeners.before.event_terminated["dapui_config"] = function()
            --     dapui.close()
            -- end
            -- dap.listeners.before.event_exited["dapui_config"] = function()
            --     dapui.close()
            -- end
        end,
    },
    {
        "mfussenegger/nvim-dap-python",
        dependencies = { "mfussenegger/nvim-dap" },
        config = function()
            local dap_python = require("dap-python")
            dap_python.setup(vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python")
        end,
    },
}
