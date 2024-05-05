from libqtile import widget
from settings.theme import colors
from qtile_extras.widget import PulseVolumeExtra


# Get the icons at https://www.nerdfonts.com/cheat-sheet (you need a Nerd Font)

def base(fg='text', bg='dark'): 
    colors['color1'] = '#232634'
    colors['color2'] = '#303446'
    return {
        'foreground': '#c6d0f5',
        'background': colors[bg],
    }


def separator():
    return widget.Sep(**base(), linewidth=0, padding=5)


def icon(fg='text', bg='dark', fontsize=16, text="?"):
    return widget.TextBox(
        **base(fg, bg),
        fontsize=fontsize,
        text=text,
        padding=3
    )


def powerline(fg="light", bg="dark"):
    return widget.TextBox(
        **base(fg, bg),
        text="", # Icon: nf-oct-triangle_left
        fontsize=37,
        padding=-2
    )


def workspaces(): 
    return [
        separator(),
        widget.GroupBox(
            **base(fg='light'),
            font='sans',
            fontsize=19,
            margin_y=3,
            margin_x=0,
            padding_y=8,
            padding_x=5,
            borderwidth=1,
            active=colors['active'],
            inactive=colors['inactive'],
            rounded=False,
            highlight_method='block',
            urgent_alert_method='block',
            urgent_border=colors['urgent'],
            this_current_screen_border='#949cbb',
            this_screen_border=colors['grey'],
            other_current_screen_border=colors['dark'],
            other_screen_border=colors['dark'],
            disable_drag=True
        ),
        separator(),
        widget.WindowName(**base(fg='focus'), fontsize=14, padding=5),
        separator(),
    ]


primary_widgets = [
    *workspaces(),

    separator(),

    #powerline('color4', 'dark'),

    #widget.TextBox(**base(bg='color4'), text=' rchLinux'),

    # icon(bg="color4", text=' '), # Icon: nf-fa-download 
    # widget.CheckUpdates(
    #     background=colors['color4'],
    #     colour_have_updates=colors['text'],
    #     colour_no_updates=colors['text'],
    #     no_update_string='0',
    #     display_format='{updates}',
    #     update_interval=1800,
    #     custom_command='checkupdates',
    # ),

    #powerline('color3', 'color4'),

    # icon(bg="color1", text=''),  # Icon: nf-fa-feed
    # widget.Net(**base(bg='color1'),format='{down:.0f}{down_suffix} ↓↑ {up:.0f}{up_suffix}'),

    #powerline('color2', 'color3'),
    
    icon(bg="color2", text='󰍛'),  # Icon: nf-fa-feed
    widget.Memory(**base(bg='color2'),format="{MemPercent}%"),
    #powerline('color2', 'color3'),

    icon(bg="color1", text='󰻠'),  # Icon: nf-fa-feed
    widget.CPU(**base(bg='color1'), format="{load_percent}%"),

    #powerline('color2', 'color3'),


    #widget.CurrentLayout(**base(bg='color2'), padding=5),

    #powerline('color1', 'color2'),

    #icon(bg="color1", fontsize=17, text=' '), # Icon: nf-mdi-calendar_clock
    PulseVolumeExtra(
        **base(bg='color2'),
        #bar_background="#0f101a",
        #bar_colour="#334148",
        hide_after=99999999,
        hide_interval=99999999,
        bar_colour_loud="#949cbb",
        bar_colour_mute="#949cbb",
        bar_colour_normal="#949cbb",
    ),

    widget.Clock(**base(bg='color1'), format='%d/%m/%y'),
    widget.Clock(**base(bg='color2'), format='%I:%M:%S'),

    # widget.Systray(background=colors['dark'], padding=5),
    # widget.CurrentLayoutIcon(**base(bg='color2'), scale=0.65),
    # widget.KeyboardLayout(**base(bg="color1"),configured_keyboards=['en','ar']),
    powerline('dark', 'color2'),
    widget.QuickExit(**base(bg="color1") ,default_text="  ",fontsize="18"),

]

secondary_widgets = [
    *workspaces(),

    separator(),

    powerline('color1', 'dark'),

    widget.CurrentLayoutIcon(**base(bg='color1'), scale=0.65),

    widget.CurrentLayout(**base(bg='color1'), padding=5),

    powerline('color2', 'color1'),

    widget.Clock(**base(bg='color2'), format='%y/%m/%d - %I:%M:%S'),

    powerline('dark', 'color2'),
]

widget_defaults = {
    'font': 'sans',
    'fontsize': 15,
    'padding': 3,
}
extension_defaults = widget_defaults.copy()
