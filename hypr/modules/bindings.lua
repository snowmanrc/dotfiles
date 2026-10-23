
hl.bind(
    "SUPER + T",
    hl.dsp.exec_cmd("alacritty")
)

hl.bind(
    "SUPER + Q",
    hl.dsp.exec_cmd("~/.dotfiles/bin/launcher")
)


-- Window Management
hl.bind(
    "SUPER + K",
    hl.dsp.window.close()
)
hl.bind(
    "SUPER + F",
    hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" })
)
hl.bind(
    "SUPER + SHIFT + F",
    hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" })
)
hl.bind(
    "SUPER + G",
    hl.dsp.window.float({ action = "toggle" })
)


-- Workspace Navigation
hl.bind(
    "SUPER + SHIFT + right",
    hl.dsp.focus({ workspace = "e+1" })
)

hl.bind(
    "SUPER + SHIFT + left",
    hl.dsp.focus({ workspace = "e-1" })
)

hl.gesture(
	{
		fingers = 3,
		direction = "horizontal",
		action = "workspace"
	}
)


for i = 0, 9 do
	hl.bind(
		"SUPER + " .. i,
		hl.dsp.focus({ workspace = tostring(i) })
	)
	hl.bind(
		"SUPER + SHIFT + " .. i,
		hl.dsp.window.move({ workspace = tostring(i) })
	)
end


-- Layout Control
hl.bind(
    "SUPER + B",
    hl.dsp.layout("togglesplit")
)

hl.bind(
    "SUPER + N",
    hl.dsp.layout("swapsplit")
)

hl.bind(
    "SUPER + M",
    hl.dsp.layout("movetoroot")
)


-- Window Control

hl.bind(
    "SUPER + left",
    hl.dsp.window.resize({ x = -100, y = 0, relative = true }),
    { repeating = true }
)
hl.bind(
    "SUPER + right",
    hl.dsp.window.resize({ x = 100, y = 0, relative = true }),
    { repeating = true }
)
hl.bind(
    "SUPER + up",
    hl.dsp.window.resize({ x = 0, y = -100, relative = true }),
    { repeating = true }
)
hl.bind(
    "SUPER + down",
    hl.dsp.window.resize({ x = 0, y = 100, relative = true }),
    { repeating = true }
)

hl.bind(
    "SUPER + mouse:272",
    hl.dsp.window.drag(),
    { mouse = true, description = "Move window" }
)
hl.bind(
    "SUPER + mouse:273",
    hl.dsp.window.resize(),
    { mouse = true, description = "Resize window" }
)


-- Hardware Control
hl.bind(
    "XF86AudioRaiseVolume",
    hl.dsp.exec_cmd("wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+"),
    { repeating = true }
)
hl.bind(
    "XF86AudioLowerVolume",
    hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
    { repeating = true }
)
hl.bind(
    "XF86AudioMute",
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle")
)
hl.bind(
    "XF86AudioMicMute",
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle")
)
hl.bind(
    "XF86MonBrightnessUp",
    hl.dsp.exec_cmd("brightnessctl set +5%"),
    { repeating = true }
)
hl.bind(
    "XF86MonBrightnessDown",
    hl.dsp.exec_cmd("brightnessctl set 5%-"),
    { repeating = true }
)