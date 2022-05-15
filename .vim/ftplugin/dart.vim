nnoremap <leader>; :CocList --input=flutter commands<CR>
autocmd FileType dart let b:coc_root_patterns = ['.pubspec.lock']

noremap <buffer> <leader>tr :DartToggleMethodBodyType<cr>
