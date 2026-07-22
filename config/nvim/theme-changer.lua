local function apply_theme()
  local file = io.open(vim.fn.expand("~/.config/nvim/.current-theme"), "r")
  local theme = file:read("*l")

  if theme == nil then
    return
  end

  local themes = {
    catppuccin = "catppuccin",
    nord = "nord",
    everforest = "everforest",
  }

  vim.cmd("colorscheme " .. themes[theme])
end

apply_theme()

local file_watcher = vim.uv.new_fs_event()

file_watcher:start(vim.fn.expand("~/.config/nvim/.current-theme"), {
  recursive = true,
}, function()
  if err then
    file_watcher:stop()
  end
  vim.schedule(function()
    apply_theme()
  end)
end)
