#Alex108-lab

from libqtile import layout
from libqtile.config import Match
from settings.theme import colors

# Layouts and layout rules


layout_conf = {
    'border_focus': colors['focus'][0],
    'border_width': 1,
    'margin': 4
}

layouts = [
    layout.Columns(
                border_focus_stack=["#d75f5f","#8f3d3d"],
                border_width=3,
                border_focus="8BAAAD",
                margin=0,
),
    layout.Max(),
    #layout.MonadTall(**layout_conf),
    #layout.MonadWide(**layout_conf),
    #layout.Bsp(**layout_conf),
    #layout.Matrix(columns=2, **layout_conf),
    #layout.RatioTile(**layout_conf),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

floating_layout = layout.Floating(
    float_rules=[
        *layout.Floating.default_float_rules,
        Match(wm_class='confirmreset'),
        Match(wm_class='makebranch'),
        Match(wm_class='maketag'),
        Match(wm_class='ssh-askpass'),
        Match(title='branchdialog'),
        Match(title='pinentry'),
    ],
    border_focus=colors["color4"][0]
)
