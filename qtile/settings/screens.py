#Alex108-lab
# Multimonitor support

from libqtile.config import Screen
from libqtile import bar
from libqtile.log_utils import logger
from settings.widgets import primary_widgets, secondary_widgets
import subprocess
import random


def status_bar(widgets):
    return bar.Bar(widgets, 22, opacity=0.9)


screens = [
    Screen(
        wallpaper=f"/home/mustafa/Pictures/wallpapers/{random.randint(1,309)}.jpg",
        wallpaper_mode="fill",
        top=status_bar(primary_widgets))
]

#xrandr = "xrandr | grep -w 'connected' | cut -d ' ' -f 2 | wc -l"

#command = subprocess.run(
#    xrandr,
#    shell=True,
#    stdout=subprocess.PIPE,
#    stderr=subprocess.PIPE,
#)

#if command.returncode != 0:
#    error = command.stderr.decode("UTF-8")
#    logger.error(f"Failed counting monitors using {xrandr}:\n{error}")
#    connected_monitors = 1
#else:
#    connected_monitors = int(command.stdout.decode("UTF-8"))
#
#if connected_monitors > 1:
#    for _ in range(1, connected_monitors):
#        screens.append(Screen(top=status_bar(secondary_widgets)))
