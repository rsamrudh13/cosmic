-- lua/config/theme-watcher.lua
--
-- Reads ~/.config/nvim/.current-theme on startup and applies the matching
-- colorscheme, then watches that file so it live-reloads whenever your
-- `change-theme` script writes a new theme name to it.

local M = {}

local theme_file = vim.fn.expand("~/.config/nvim/.current-theme")

-- Map the names your change-theme script writes -> actual nvim colorscheme names.
-- Edit the right-hand side to match whatever `:colorscheme` expects for each plugin.
local colorscheme_map = {
  catppuccin = "catppuccin",
  everforest = "everforest",
  nord = "nord",
}

local function apply_theme_from_file()
  local ok, lines = pcall(vim.fn.readfile, theme_file)
  if not ok or not lines or #lines == 0 then
    return
  end

  local name = vim.trim(lines[1])
  if name == "" then
    return
  end

  local colorscheme = colorscheme_map[name] or name

  local applied_ok, err = pcall(vim.cmd.colorscheme, colorscheme)
  if not applied_ok then
    vim.notify(
      ("theme-watcher: failed to apply colorscheme '%s' (from '%s'): %s"):format(colorscheme, name, err),
      vim.log.levels.WARN
    )
  end
end

local watch_handle

local function start_watch()
  local uv = vim.uv or vim.loop

  local function watch()
    -- Close any previous handle before re-arming.
    if watch_handle then
      watch_handle:stop()
      watch_handle:close()
    end

    watch_handle = uv.new_fs_event()

    watch_handle:start(theme_file, {}, function(err)
      if err then
        return
      end
      -- Debounce: fs_event can fire more than once per write, and callbacks
      -- run outside the main loop, so hop back onto it before touching nvim state.
      vim.schedule(function()
        apply_theme_from_file()
      end)
      -- Re-arm: some editors/writes invalidate the watch after one event.
      vim.schedule(watch)
    end)
  end

  watch()
end

function M.setup()
  apply_theme_from_file()
  start_watch()

  -- Clean up the libuv handle when nvim exits.
  vim.api.nvim_create_autocmd("VimLeavePre", {
    callback = function()
      if watch_handle then
        watch_handle:stop()
        watch_handle:close()
      end
    end,
  })
end

return M
