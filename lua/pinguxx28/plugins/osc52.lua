return {
    "ojroques/nvim-osc52",
    config = function()
        local osc52 = require("osc52")

        -- basic plugin setup
        osc52.setup({
            max_length = 0,  -- unlimited size
            silent = true,
        })

        -- Override the default yank behavior in visual mode
        vim.keymap.set('v', 'y', function()
            -- Yank like normal
            vim.cmd('normal! y')

            -- Get the text from unnamed register
            local text = vim.fn.getreg('"')
            
            -- Send to OSC52
            osc52.copy(text)

            -- Also store in + and * so other plugins/commands work
            vim.fn.setreg('+', text)
            vim.fn.setreg('*', text)
        end, { noremap = true, silent = true })

        -- Normal mode line yank
        vim.keymap.set('n', 'yy', function()
            vim.cmd('normal! yy')
            local text = vim.fn.getreg('"')
            osc52.copy(text)
            vim.fn.setreg('+', text)
            vim.fn.setreg('*', text)
        end, { noremap = true, silent = true })
    end
}

