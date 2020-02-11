#
# Powerline Double Orange - Tmux Theme
# Created by Jim Myhrberg <contact@jimeh.me>.
#
# Inspired by vim-powerline: https://github.com/Lokaltog/powerline
#
# Requires terminal to be using a powerline compatible font, find one here:
# https://github.com/Lokaltog/powerline-fonts
#

# Status update interval
set-option -g status-interval 1

# Basic status bar colors
set-option -g status-style fg=colour240,bg=colour233

# Left side of status bar
set-option -g status-left-style bg=colour233,fg=colour243
set-option -g status-left-length 40
#set-option -g status-left "#[fg=colour233,bg=colour130,bold] #{session_name} #[fg=colour130,bg=colour240,nobold]#[fg=colour233,bg=colour240] #(whoami) #[fg=colour240,bg=colour235]#[fg=colour240,bg=colour235] #{window_index}:#{pane_index} #[fg=colour235,bg=colour233,nobold]"
set-option -g status-left "#[fg=colour233,bg=colour130,bold] #{session_name}#[fg=colour130,bg=colour233,nobold]►"

# Right side of status bar
set-option -g status-right-style bg=colour233,fg=colour243
set-option -g status-right-length 150
set-option -g status-right "#[fg=colour235,bg=colour233]◄#[fg=colour240,bg=colour235] %H:%M:%S #[fg=colour240,bg=colour235]◄#[fg=colour233,bg=colour240] %y-%b-%d #[fg=colour130,bg=colour240]◄#[fg=colour233,bg=colour130,bold] #{=-6:host_short}"

# Window status
set-option -g window-status-format " #{window_index}:#{window_name}#{window_flags} "
set-option -g window-status-current-format "#[fg=colour233,bg=black]#[fg=colour166,nobold] #{window_index}:#{window_name}#{window_flags} #[fg=colour233,bg=black,nobold]"

# Current window status
set-option -g window-status-current-style bg=colour130,fg=colour235

# Window with activity status
set-option -g window-status-activity-style bg=colour233,fg=colour245

# Window separator
set-option -g window-status-separator ""

# Window status alignment
set-option -g status-justify centre

# Pane border
set-option -g pane-border-style bg=default,fg=colour238

# Active pane border
set-option -g pane-active-border-style bg=default,fg=colour130

# Pane number indicator
set-option -g display-panes-colour colour233
set-option -g display-panes-active-colour colour245

# Clock mode
set-option -g clock-mode-colour colour130
set-option -g clock-mode-style 24

# Message
set-option -g message-style bg=colour130,fg=black

# Command message
set-option -g message-command-style bg=colour233,fg=black

# Mode
set-option -g mode-style bg=colour130,fg=colour232
