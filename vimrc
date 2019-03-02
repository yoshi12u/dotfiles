set runtimepath+=~/.vim/
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif
runtime! plugin_settings/*.vim
runtime! config/*.vim
