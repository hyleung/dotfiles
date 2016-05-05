# Path to Oh My Fish install.
set -gx OMF_PATH /Users/hyleung/.local/share/omf

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG /Users/hyleung/.config/omf

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

set -x GOPATH /Users/hyleung/gocode
set -x PATH $PATH /opt/boxen/homebrew/bin/ $GOPATH/bin
