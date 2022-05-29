from libqtile import bar
from .widgets import *
from libqtile.config import Screen
from modules.keys import terminal
import os

screens = [
    Screen(
        top=bar.Bar(
            [   widget.Sep(padding=3, linewidth=0, background="#2f343f"),
                widget.Image(filename='~/.config/qtile/eos-c.png', margin=3, background="#2f343f", mouse_callbacks={'Button1': lambda: qtile.cmd_spawn("rofi -show combi")}),
                widget.Sep(padding=4, linewidth=0, background="#2f343f"), 
                widget.GroupBox(
                                highlight_method='line',
                                this_screen_border="#5294e2",
                                this_current_screen_border="#5294e2",
                                active="#ffffff",
                                inactive="#848e96",
                                background="#2f343f"),
                widget.TextBox(
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground='#2f343f'
                       ),    
                widget.Prompt(),
                widget.Spacer(length=5),
                widget.WindowName(foreground='#99c0de',fmt='{}'),
                widget.Chord(
                    chords_colors={
                        'launch': ("#ff0000", "#ffffff"),
                    },
                    name_transform=lambda name: name.upper(),
                ),
                widget.CurrentLayoutIcon(scale=0.75),
                widget.CheckUpdates(
                    update_interval=1800,
                    distro="Arch_yay",
                    display_format="{updates} Updates",
                    foreground="#ffffff",
                    mouse_callbacks={
                        'Button1':
                        lambda: qtile.cmd_spawn(terminal + ' -e yay -Syu')
                    },
                    background="#2f343f"),
                    widget.TextBox(
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground='#2f343f'
                       ),
                    widget.CPU(
                        format = 'CPU {load_percent}%',
                        ),
                    widget.Sep(
                         linewidth = 4,
                         padding = 10,
                         ),
                    widget.Memory(
						format = 'MEM {MemUsed:.0f} M',
						measure_mem = 'M',
						mouse_callbacks = {'Button1': lambda: qtile.cmd_spawn(terminal + ' -e htop')}
						),
                    widget.Sep(
                         linewidth = 4,
                         padding = 10,
                         ),
                    widget.OpenWeather(
						app_key = '7834197c2338888258f8cb94ae14ef49',
						format = 'TEMP {main_temp} °{units_temperature}',
						location = 'rudrapur',
						zip = 263153,
						update_interval = 60
						),
                    widget.Sep(
                         linewidth = 4,
                         padding = 10,
                         ),
                    widget.Backlight(
                       format = 'BR {percent:2.0%}',
                       backlight_name =  'amdgpu_bl0',
                        ),
                    widget.Sep(
                         linewidth = 4,
                         padding = 10,
                         ),
                widget.Battery(
                        format = 'BAT {char} {percent:2.0%}',
                        charge_char = '+',
                        discharge_char = '~',
                        update_interval = 3,
                        ),
                volume,
                widget.TextBox(                                                                    
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground='#2f343f',
                       ),   
                widget.TextBox(
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground='#2f343f'
                       ),
                widget.Clock(format=' %Y-%m-%d %a %I:%M %p',
                             background="#2f343f",
                             foreground='#9bd689',
                             font = 'Font Awesome 5 Free',
                mouse_callbacks = {'Button1': lambda: qtile.cmd_spawn(terminal + ' --hold -e cal -3')}
                ),
                                                widget.TextBox(                                                
                                                
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground='#2f343f',
                       ),
 widget.Systray(icon_size = 20),
                
            ],
            30,  # height in px
            background="#404552"  # background color
        ), ),
]
