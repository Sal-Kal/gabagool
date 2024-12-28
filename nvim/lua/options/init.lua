-- Universal Options
vim.opt.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 9
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.virtualedit = "block"
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.termguicolors = true
vim.opt.splitbelow = true
-- vim.opt.formatoptions = "jtcqla"

-- Custom tab label
function _G.custom_tabline()
    local tabline = ""
    local tabs = vim.fn.gettabinfo()
    local current_tab = vim.fn.tabpagenr()

    -- First, collect all tab names to check for duplicates
    local all_names = {}
    for _, tab in ipairs(tabs) do
        local buflist = vim.fn.tabpagebuflist(tab.tabnr)
        local winnr = vim.fn.tabpagewinnr(tab.tabnr)
        local bufnr = buflist[winnr]
        local name = vim.fn.bufname(bufnr)
        local filename = vim.fn.fnamemodify(name, ":t")
        table.insert(all_names, filename)
    end

    -- Count occurrences of each filename
    local name_count = {}
    for _, name in ipairs(all_names) do
        name_count[name] = (name_count[name] or 0) + 1
    end

    -- Generate the tabline
    for _, tab in ipairs(tabs) do
        local buflist = vim.fn.tabpagebuflist(tab.tabnr)
        local winnr = vim.fn.tabpagewinnr(tab.tabnr)
        local bufnr = buflist[winnr]
        local name = vim.fn.bufname(bufnr)
        local filename = vim.fn.fnamemodify(name, ":t")

        -- Highlight if it's the current tab
        if tab.tabnr == current_tab then
            tabline = tabline .. "%#TabLineSel#"
        else
            tabline = tabline .. "%#TabLine#"
        end

        tabline = tabline .. " "
        -- If there are duplicate filenames, show shortened path
        if name_count[filename] > 1 then
            -- Show parent directory and filename
            local shortened_path = vim.fn.fnamemodify(name, ":~:.:h") .. "/" .. filename
            tabline = tabline .. shortened_path
        else
            -- Show only filename
            tabline = tabline .. filename
        end
        tabline = tabline .. " "
    end

    -- Fill the rest of the tabline
    tabline = tabline .. "%#TabLineFill#"
    return tabline
end

-- Set the custom tabline
vim.o.tabline = "%!v:lua.custom_tabline()"
