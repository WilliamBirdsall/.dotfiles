local function git_branch()
    local branch = vim.fn.system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
    if string.len(branch) > 0 then
        return branch
    else
        return ":"
    end
end

local function statusline()
    local set_color_1 = "%#PmenuSel#"
    local branch_icon = ""
    local branch = git_branch()
    local set_color_2 = "%#LineNr#"
    local file_name = "  %f"
    local modified = "%m"
    local align_right = "%="
    local filetype = " %y"
    local fileencoding = " %{&fileencoding?&fileencoding:&encoding}"
    local fileformat = " [%{&fileformat}]"
    local percentage = " %p%%"
    local linecol = " %l:%c"

    return string.format(
        "%s %s %s %s%s%s%s%s%s%s%s%s",
        set_color_1,
        branch_icon,
        branch,
        set_color_2,
        file_name,
        modified,
        align_right,
        filetype,
        fileencoding,
        fileformat,
        percentage,
        linecol
    )
end

vim.opt.statusline = statusline()
