local function git_branch()
    local branch = vim.fn.system("git rev-parse --abbrev-ref HEAD")
    local i = string.find(branch, "fatal")

    if i == nil then
        return branch:sub(1, -2)
    else
        return nil
    end
end

local function statusline()
    local set_color_1 = "%#PmenuSel#" -- Git color
    local set_color_2 = "%#Pmenu#" -- Bar color
    local file_name = "%<%f"
    local branch = git_branch()
    local modified = "%m"
    local align_right = "%="
    local fileencoding = " %{&fileencoding?&fileencoding:&encoding}"
    local fileformat = "[%{&fileformat}]"
    local percentage = " %p%%"
    local linecol = " %l/%L:%c"

    if branch then
      return string.format(
          "%s %s %s %s%s%s%s%s%s%s",
          set_color_1,
          branch,
          set_color_2,
          file_name,
          modified,
          align_right,
          fileencoding,
          filetype,
          fileformat,
          linecol,
          percentage
      )
    else
      return string.format(
          "%s%s%s%s%s%s%s%s",
          set_color_2,
          file_name,
          modified,
          align_right,
          fileencoding,
          filetype,
          fileformat,
          linecol,
          percentage
      )
    end
end

vim.opt.statusline = statusline()

