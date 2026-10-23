hl.config(
	{
		general = {

			allow_tearing = false,

			border_size = 0,
			resize_on_border = true,

			gaps_in = 6,
			gaps_out = 12,
			
			layout = "dwindle",
			locale = "en_US",

			col = {
				active_border = "rgb(000000)",
				inactive_border = "rgba(00000000)",
			},

			snap = {
				enabled = false,
			},
		},
		
		decoration = {
			rounding = 10,
			rounding_power = 4,
			active_opacity = 1.0,
			inactive_opacity = 1.0,
			dim_inactive = false,
			dim_modal = true,
			dim_special = 0.2,
			dim_strength = 0.1,

			blur = {
				enabled = true,
				size = 2,
				passes = 2,
				vibrancy = 1,
			},

			shadow = {
				enabled = true,
				range = 20,
				render_power = 5,
				offset = {0, 5},
				color = "rgba(00000070)",
			},
		},

		animations = {
			enabled = true,
			workspace_wraparound = false
		},

		cursor = {
			hide_on_key_press = true,
			inactive_timeout = 10,
		},
	}
)