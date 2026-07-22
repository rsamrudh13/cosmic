hl.curve("mwahhh", { type = "bezier", points = { { 0, 0.01 }, { 0.52, 0.83 } } })

hl.animation({ leaf = "windowsIn", enabled = true, speed = 1.9, bezier = "mwahhh", style = "popin" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.9, bezier = "mwahhh", style = "popin" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 1.9, bezier = "mwahhh", style = "popin" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 1.9, bezier = "mwahhh", style = "slide" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 1, bezier = "mwahhh", style = "slidevert" })
hl.animation({ leaf = "layers", enabled = true, speed = 1, bezier = "mwahhh", style = "slide" })

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})

hl.config({
	general = {
		gaps_in = 0,
		gaps_out = 0,
		border_size = 0,
		allow_tearing = true,
		layout = "scrolling",
	},

	scrolling = {
		explicit_column_widths = "0.333, 0.5, 0.667, 1.0",
	},

	decoration = {
		active_opacity = 1,
		inactive_opacity = 0.7,
		border_part_of_window = false,
		blur = {
			size = 1,
			passes = 2,
			new_optimizations = true,
			noise = 0,
			brightness = 0.7,
		},

		shadow = {
			enabled = false,
		},
	},
})
