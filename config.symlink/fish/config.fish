source /Users/$USER/.config/fish/functions/docker.fish
# Path to Oh My Fish install.
set -gx OMF_PATH /Users/$USER/.local/share/omf

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG /Users/$USER/.config/omf

# Load oh-my-fish configuration.
#source $OMF_PATH/init.fish

set -x GOPATH /Users/$USER/gocode
set -x PATH /opt/boxen/homebrew/bin/ $PATH $GOPATH/bin
set -g theme_color_scheme solarized-light
alias fig "docker-compose"

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end
