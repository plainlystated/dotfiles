export PATH="/usr/local/bin:$PATH:./node_modules/.bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export MAGICK_HOME="/usr/local/ImageMagick"
export PATH="$MAGICK_HOME/bin:$PATH"
export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/"
