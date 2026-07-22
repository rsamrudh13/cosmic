-- ###################
-- ### KEYBINDINGS ###
-- ###################
--

hl.bind("ALT + RETURN", hl.dsp.exec_cmd(terminal))

hl.bind("ALT + W", hl.dsp.window.close())

hl.bind("ALT + M", hl.dsp.exit())

hl.bind("ALT + E", hl.dsp.exec_cmd(fileManager))

hl.bind("ALT + F", hl.dsp.window.fullscreen({ action = "toggle" }))

hl.bind("ALT + SPACE", hl.dsp.exec_cmd(menu .. " -theme-str 'entry { placeholder: \"Apps\"; }'"))

hl.bind("ALT + V", hl.dsp.exec_cmd("cliphist list | rofi -dmenu | cliphist decode | wl-copy"))

hl.bind("PRINT", hl.dsp.exec_cmd("~/.local/bin/screenshotFull"))

hl.bind("ALT + PRINT", hl.dsp.exec_cmd("~/.local/bin/screenshotRegion"))

hl.bind("ALT + SHIFT + W", hl.dsp.exec_cmd("~/.local/bin/nextWallpaper"))

hl.bind("ALT + P", hl.dsp.exec_cmd("~/.local/bin/togglePower"))

hl.bind("ALT + SHIFT + L", hl.dsp.exec_cmd("hyprlock"))

hl.bind("ALT + period", hl.dsp.exec_cmd("rofi -modi emoji -show emoji"))

hl.bind("ALT + SHIFT + F", hl.dsp.window.float({ action = "toggle" }))

hl.bind("CTRL + ALT + W", hl.dsp.exec_cmd("~/.local/bin/restartWaybar"))

hl.bind("ALT + T", hl.dsp.exec_cmd("~/.local/bin/changeTheme"))

hl.bind("ALT + DELETE", hl.dsp.exec_cmd("~/.local/bin/powerMenu"))

hl.bind("ALT + B", hl.dsp.exec_cmd(browser))

hl.bind("CTRL + left", hl.dsp.exec_cmd("mpc volume -2"), {
	repeating = true,
	locked = true,
})

hl.bind("CTRL + right", hl.dsp.exec_cmd("mpc volume +2"), {
	repeating = true,
	locked = true,
})

hl.bind("ALT + S", hl.dsp.workspace.toggle_special("ncmpcpp"))

hl.bind("ALT + h", hl.dsp.focus({ direction = "l" }))
hl.bind("ALT + l", hl.dsp.focus({ direction = "r" }))
hl.bind("ALT + k", hl.dsp.focus({ direction = "u" }))
hl.bind("ALT + j", hl.dsp.focus({ direction = "d" }))

hl.bind("ALT + 1", hl.dsp.focus({ workspace = "1" }))
hl.bind("ALT + 2", hl.dsp.focus({ workspace = "2" }))
hl.bind("ALT + 3", hl.dsp.focus({ workspace = "3" }))
hl.bind("ALT + 4", hl.dsp.focus({ workspace = "4" }))
hl.bind("ALT + 5", hl.dsp.focus({ workspace = "5" }))
hl.bind("ALT + 6", hl.dsp.focus({ workspace = "6" }))
hl.bind("ALT + 7", hl.dsp.focus({ workspace = "7" }))
hl.bind("ALT + 8", hl.dsp.focus({ workspace = "8" }))
hl.bind("ALT + 9", hl.dsp.focus({ workspace = "9" }))
hl.bind("ALT + 0", hl.dsp.focus({ workspace = "10" }))

hl.bind("ALT + SHIFT + 1", hl.dsp.window.move({ workspace = "1" }))
hl.bind("ALT + SHIFT + 2", hl.dsp.window.move({ workspace = "2" }))
hl.bind("ALT + SHIFT + 3", hl.dsp.window.move({ workspace = "3" }))
hl.bind("ALT + SHIFT + 4", hl.dsp.window.move({ workspace = "4" }))
hl.bind("ALT + SHIFT + 5", hl.dsp.window.move({ workspace = "5" }))
hl.bind("ALT + SHIFT + 6", hl.dsp.window.move({ workspace = "6" }))
hl.bind("ALT + SHIFT + 7", hl.dsp.window.move({ workspace = "7" }))
hl.bind("ALT + SHIFT + 8", hl.dsp.window.move({ workspace = "8" }))
hl.bind("ALT + SHIFT + 9", hl.dsp.window.move({ workspace = "9" }))
hl.bind("ALT + SHIFT + 0", hl.dsp.window.move({ workspace = "10" }))
hl.bind("ALT + mouse_down", hl.dsp.exec_cmd("hyprctl dispatch workspace e+1"), { mouse = true })
hl.bind("ALT + mouse_up", hl.dsp.exec_cmd("hyprctl dispatch workspace e-1"), { mouse = true })

hl.bind("ALT + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("ALT + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), {
	repeating = true,
	locked = true,
})

hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), {
	repeating = true,
	locked = true,
})

hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), {
	locked = true,
})

hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @default_audio_source@ toggle"), {
	locked = true,
})

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set +5%"), {
	repeating = true,
	locked = true,
})

hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 5%-"), {
	repeating = true,
	locked = true,
})

hl.bind("ALT + N", hl.dsp.exec_cmd("~/.local/bin/nightlightToggle"))

hl.bind("ALT + Q", hl.dsp.layout("colresize +conf"))
