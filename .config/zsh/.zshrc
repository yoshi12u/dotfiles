eval "$(/opt/homebrew/bin/brew shellenv)"

# extra files in $ZDOTDIR/configs/pre , $ZDOTDIR/configs , and $ZDOTDIR/configs/post
# these are loaded first, second, and third, respectively.
_load_settings() {
  _dir="$1"
  if [ -d "$_dir" ]; then
    if [ -d "$_dir/pre" ]; then
      for config in "$_dir"/pre/**/*.(zsh|zwc)(N-.); do
        . $config
      done
    fi

    for config in "$_dir"/**/*(N-.); do
      case "$config" in
        "$_dir"/(pre|post)/*|*.zwc)
          :
          ;;
        *)
          . $config
          ;;
      esac
    done

    if [ -d "$_dir/post" ]; then
      for config in "$_dir"/post/**/*.(zsh|zwc)(N-.); do
        . $config
      done
    fi
  fi
}
_load_settings "$ZDOTDIR/plugins"
_load_settings "$ZDOTDIR/functions"
_load_settings "$ZDOTDIR/configs"

# Local config
source $ZDOTDIR/.zshrc.local

source /Users/yoshimasauehara/.config/broot/launcher/bash/br
