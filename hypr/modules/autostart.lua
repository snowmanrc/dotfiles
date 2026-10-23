
local cmds = {
	"hyprctl setcursor Bibata-Modern-Classic-Hypr 24",
	"alacritty",
	"noctalia"
}

hl.on(
	"hyprland.start",
	function()
		for _, cmd in ipairs(cmds) do
            hl.exec_cmd(cmd)
        end
	end
)