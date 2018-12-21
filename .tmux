# [Tmux Cheat Sheet & Quick Reference](https://www.tmuxcheatsheet.com/)


# [Migrating from GNU Screen to Tmux](https://robots.thoughtbot.com/migrating-from-screen-to-tmux)
# $ tmux new -s <session name>
# $ tmux attach -t <session name>
# <prefix e.g. C-a> + d => detach
# $ tmux list-buffers  # List Buffers
# Using Panes and Tabs
# - Open a vertical pane: control b + |
# - Open a horizontal pane: control b + –
# - Move between panes: control b + direction arrows
# - Drag a pane around: hold control b and use direction arrows
# - Open a new tab: control b + c
# - Move between tabs: control b and use direction arrows
# - Close a tab: control b : and type kill-window
# Other Common Commands
# - List sessions: tmux list-sessions
# - Attach to a specific session: tmux attach -t session
# - Kill a specific session: tmux kill-session -t session
# - Detach from current session: control b : and type detach
# - Detach all connections from session: tmux a -dt session
# - Rename a session: control b : and type rename-session
# - Rename a tab/window: control b : and type rename-window



# Remapping prefix to Ctrl-a 
unbind C-b
set -g prefix C-a
# Toggling windows with Ctrl-a + Ctrl-a 
bind-key C-a last-window
# Jump to beginning of line in Bash 
bind a send-prefix



# [hobo.house](https://hobo.house/2016/07/16/tmux-for-gnu-screen-refugees-and-vim-users/)
# [His config](https://raw.githubusercontent.com/sadsfae/misc-dotfiles/master/tmux.conf)
# set terminal color
set -g default-terminal "screen-256color"
## control +b + | vert split
bind | split-window -h
# control +b + - horiz split
bind - split-window -v
unbind '"'
unbind %
# highlight current current active pane background
set-window-option -g window-status-current-bg white
# fix highlight colors in vi mode copy/paste
# Copy mode colors
set-window-option -g mode-fg "#000000"
set-window-option -g mode-bg "#FD870D"
# Switch windows with Control arrows
bind-key -nr C-Right select-window -n
bind-key -nr C-Left select-window -p

# [Moving from GNU Screen to Tmux](https://karl-voit.at/2015/12/14/screen-to-tmux/)
set-window-option -g window-status-fg white
setw -g window-status-current-bg brightgreen
setw -g window-status-current-fg black
set -g status-fg green
set -g status-bg black
set -g status-left "#[default]@#h#[fg=red]:#S#[fg=white] |"
set -g status-right-length 34
set -g status-right '#[fg=yellow]#(cut -d " " -f 1-3 /proc/loadavg)#[default] #[fg=cyan,bold]%Y-%m-%d %H:%M#[default]'

# Notifying if other windows has activities
setw -g monitor-activity on
## m -> notify me on 10s of silence
bind-key m set-window-option monitor-activity off \; set-window-option monitor-silence 10
## M -> notify me on activity again (as usual)
bind-key M set-window-option monitor-activity on \; set-window-option monitor-silence 0

# Quick tools
# This could be useful for jobtree
#bind-key E new-window -a -n "mutt" -t 1 "/usr/bin/mutt"
bind-key J new-window -a -n "jobtree" -t 11 "jobtree"


# [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)
# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# <prefix> + I   # Install plugins

#### tmux plugin manager
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
# [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)
set -g @plugin 'tmux-plugins/tmux-resurrect'
# [tmux-continuum](https://github.com/tmux-plugins/tmux-continuum)
set -g @plugin 'tmux-plugins/tmux-continuum'

# set continuum to restore sessions automatically
set -g @continuum-restore 'on'
# restore vim sessions
# for vim
#set -g @resurrect-strategy-vim 'session'
# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'git@github.com/user/plugin'
# set -g @plugin 'git@bitbucket.com/user/plugin'

# Initialize TMUX plugin manager (keep this line at the very bottom of
# tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
