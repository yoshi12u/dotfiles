augroup onsave
  autocmd!
  autocmd BufWritePre * :%s/\s\+$//e
augroup END
