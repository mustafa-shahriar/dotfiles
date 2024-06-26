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
#groups = [Group(i) for i in ["   ", "  ", "   ", "   ", "   ", " ﲵ  ", "   ", "   ", "   ",]
#]
# groups = [Group(i) for i in ["   ", "  ", "  "," 󰭤 ", "  "]
# ]

groups = [Group(i) for i in ["1", "2", "3","4", "5"]]
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

