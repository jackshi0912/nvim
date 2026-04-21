return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    config = function()
        local harpoon = require("harpoon")
        ---@diagnostic disable-next-line: missing-parameter
        harpoon:setup()
        local function map(lhs, rhs, opts)
                vim.keymap.set("n", lhs, rhs, opts or {})
        end
        map("<leader>gg", function() harpoon:list():add() end)
        map("<leader>gj", function() harpoon:list():replace_at(1) end)
        map("<leader>gk", function() harpoon:list():replace_at(2) end)
        map("<leader>gl", function() harpoon:list():replace_at(3) end)
        map("<leader>g;", function() harpoon:list():replace_at(4) end)
        map("<leader>g'", function() harpoon:list():replace_at(5) end)
        map("<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
        map("<leader>j", function() harpoon:list():select(1) end)
        map("<leader>k", function() harpoon:list():select(2) end)
        map("<leader>l", function() harpoon:list():select(3) end)
        map("<leader>;", function() harpoon:list():select(4) end)
        map("<leader>'", function() harpoon:list():select(5) end)
    end
}
