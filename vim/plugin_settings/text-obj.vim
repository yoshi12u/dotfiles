if exists('g:loaded_textobj_camelcase')
  finish
endif

call textobj#user#plugin('camelcase', {
\      '-': {
\           '*pattern*': '[A-Za-z][a-z0-9]\+',
\           'select': ['au', 'iu'],
\      },
\   })

let loaded_textobj_camelcase = 1
