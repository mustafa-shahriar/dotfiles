-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--

local torrent = "transmission-daemon"
local eye = "hyprsunset --temperature 4000 --gamma 90"
local browser = "~/.zen/zen"
local notification_deamon = "swaync"
hl.on("hyprland.start", function()
	hl.exec_cmd(notification_deamon)
	hl.exec_cmd(browser)
	hl.exec_cmd(torrent)
	hl.exec_cmd(eye)
	hl.exec_cmd("waybar & hyprpaper")
end)
