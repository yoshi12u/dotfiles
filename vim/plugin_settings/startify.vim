let ghq_path = '~/.ghq/github.com/uesaiso'
let g:startify_files_number        = 3
let g:startify_custom_header = 'startify#fortune#quote()'
let g:startify_bookmarks = ['~/.vim', ghq_path.'/texxer-front', ghq_path.'/texxer-api']
let g:startify_lists = [
      \ { 'header': ['   MRU '], 'type': 'dir' },
      \ { 'header': ['   BOOKMARKS '],     'type': 'bookmarks' },
      \ ]
