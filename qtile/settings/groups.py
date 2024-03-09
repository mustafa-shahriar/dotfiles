#Alex108-lab
# Qtile workspaces

from libqtile.config import Key, Group
from libqtile.command import lazy
from settings.keys import mod, keys


# Get the icons at https://www.nerdfonts.com/cheat-sheet (you need a Nerd Font)

#groups = [Group(i) for i in [
#    "   ", "  ", "   ", "   ", "   ", " ﲵ  ", "   ", "   ", "   ",
#]]
#
#for i, group in enumerate(groups):
#    actual_key = str(i + 1)
#    keys.extend([
#        # Switch to workspace N
#        Key([mod], actual_key, lazy.group[group.name].toscreen()),
#        # Send window to workspace N
#        Key([mod, "shift"], actual_key, lazy.window.togroup(group.name))
#    ])

#groups = [Group(i) for i in ["   ", "  ", "   ", "   ", "   ", " ﲵ  ", "   ", "   ", "   ",]
#]

groups = [Group(i) for i in ["   ", "  ", "  "," 󰭤 ", "  "]
]
group_hotkyes="asdfg"
mod1 = "mod1"

for i,j in zip(groups, group_hotkyes):
    keys.extend(
        [
            # mod1 + group number = switch to group
            Key(
                [mod1],
                j,
                lazy.group[i.name].toscreen(),
                desc="Switch to group {}".format(i.name),
            ),
            # mod1 + shift + group number = switch to & move focused window to group
            Key(
                [mod1, "shift"],
                j,
                lazy.window.togroup(i.name, switch_group=True),
                desc="Switch to & move focused window to group {}".format(i.name),
            ),
        ]
    )

