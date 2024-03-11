# Qtile workspaces

from libqtile.config import Key, Group, Match
from libqtile.command import lazy
from .keys import mod, keys

groups = [
    #Group(" 󰈹 "),
    #Group("  "),
    #Group("  "),
    #Group("  "),
    #Group("  "),
    #Group(" 󰙯 "),
    #Group("  "),
    Group(" 1 "),
    Group(" 2 "),
    Group(" 3 "),
    Group(" 4 "),
    Group(" 5 "),
    Group(" 6 "),
]

for i, group in enumerate(groups):
    actual_key = str(i + 1)
    keys.extend([
        # Switch to workspace N
        Key([mod], actual_key, lazy.group[group.name].toscreen()),
        # Send window to workspace N
        Key([mod, "shift"], actual_key, lazy.window.togroup(group.name))
    ])
