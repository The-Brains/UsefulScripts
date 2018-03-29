#!/bin/bash

# Put the content of this file at '/usr/local/bin/notify'
# Will only work for osx
# Use: `notify my message`
# You can go to System Preferences -> Notification -> Script Editor -> and set it up as alert.
# Otherwise you might miss the notification.

# /usr/bin/osascript -e "display notification \"$*\""
X="$*" /usr/bin/osascript -e 'display notification system attribute "X"'
echo "Notify: '$*'"

