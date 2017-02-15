# Path to Oh My Fish install.
set -gx OMF_PATH /Users/$USER/.local/share/omf

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG /Users/$USER/.config/omf

# Load oh-my-fish configuration.
#source $OMF_PATH/init.fish

set -x GOPATH /Users/$USER/gocode
set -x PATH /opt/boxen/homebrew/bin/ $PATH $GOPATH/bin
