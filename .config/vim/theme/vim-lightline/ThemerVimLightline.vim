

  
  if &background == 'dark'
    
  let s:guishade0 = "#282c34"
  let s:guishade1 = "#393e48"
  let s:guishade2 = "#4b515c"
  let s:guishade3 = "#5c6370"
  let s:guishade4 = "#636d83"
  let s:guishade5 = "#828997"
  let s:guishade6 = "#979eab"
  let s:guishade7 = "#abb2bf"
  let s:guiaccent0 = "#e06c75"
  let s:guiaccent1 = "#d19a66"
  let s:guiaccent2 = "#e5c07b"
  let s:guiaccent3 = "#98c379"
  let s:guiaccent4 = "#56b6c2"
  let s:guiaccent5 = "#61afef"
  let s:guiaccent6 = "#c678dd"
  let s:guiaccent7 = "#be5046"
  let s:shade0 = 236
  let s:shade1 = 238
  let s:shade2 = 239
  let s:shade3 = 102
  let s:shade4 = 103
  let s:shade5 = 245
  let s:shade6 = 247
  let s:shade7 = 249
  let s:accent0 = 1
  let s:accent1 = 7
  let s:accent2 = 13
  let s:accent3 = 150
  let s:accent4 = 116
  let s:accent5 = 111
  let s:accent6 = 3
  let s:accent7 = 173
  
  endif
  

  
  if &background == 'light'
    
  let s:guishade0 = "#fafafa"
  let s:guishade1 = "#cdced1"
  let s:guishade2 = "#a0a1a7"
  let s:guishade3 = "#9d9d9f"
  let s:guishade4 = "#83858b"
  let s:guishade5 = "#696c77"
  let s:guishade6 = "#51535d"
  let s:guishade7 = "#383a42"
  let s:guiaccent0 = "#e45649"
  let s:guiaccent1 = "#986801"
  let s:guiaccent2 = "#c18401"
  let s:guiaccent3 = "#50a14f"
  let s:guiaccent4 = "#0184bc"
  let s:guiaccent5 = "#4078f2"
  let s:guiaccent6 = "#a626a4"
  let s:guiaccent7 = "#ca1243"
  let s:shade0 = 231
  let s:shade1 = 252
  let s:shade2 = 247
  let s:shade3 = 247
  let s:shade4 = 245
  let s:shade5 = 242
  let s:shade6 = 240
  let s:shade7 = 237
  let s:accent0 = 0
  let s:accent1 = 136
  let s:accent2 = 178
  let s:accent3 = 108
  let s:accent4 = 38
  let s:accent5 = 69
  let s:accent6 = 133
  let s:accent7 = 161
  
  endif
  

  let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
  let s:p.normal.left = [ [ s:guishade1, s:guiaccent5, s:shade1, s:accent5 ], [ s:guishade7, s:guishade2, s:shade7, s:shade2 ] ]
  let s:p.normal.right = [ [ s:guishade1, s:guishade4, s:shade1, s:shade4 ], [ s:guishade5, s:guishade2, s:shade5, s:shade2 ] ]
  let s:p.inactive.right = [ [ s:guishade1, s:guishade3, s:shade1, s:shade3 ], [ s:guishade3, s:guishade1, s:shade3, s:shade1 ] ]
  let s:p.inactive.left =  [ [ s:guishade4, s:guishade1, s:shade4, s:shade1 ], [ s:guishade3, s:guishade0, s:shade3, s:shade0 ] ]
  let s:p.insert.left = [ [ s:guishade1, s:guiaccent3, s:shade1, s:accent3 ], [ s:guishade7, s:guishade2, s:shade7, s:shade2 ] ]
  let s:p.replace.left = [ [ s:guishade1, s:guiaccent1, s:shade1, s:accent1 ], [ s:guishade7, s:guishade2, s:shade7, s:shade2 ] ]
  let s:p.visual.left = [ [ s:guishade1, s:guiaccent6, s:shade1, s:accent6 ], [ s:guishade7, s:guishade2, s:shade7, s:shade2 ] ]
  let s:p.normal.middle = [ [ s:guishade5, s:guishade1, s:shade5, s:shade1 ] ]
  let s:p.inactive.middle = [ [ s:guishade4, s:guishade1, s:shade4, s:shade1 ] ]
  let s:p.tabline.left = [ [ s:guishade6, s:guishade2, s:shade6, s:shade2 ] ]
  let s:p.tabline.tabsel = [ [ s:guishade6, s:guishade0, s:shade6, s:shade0 ] ]
  let s:p.tabline.middle = [ [ s:guishade2, s:guishade4, s:shade2, s:shade4 ] ]
  let s:p.tabline.right = copy(s:p.normal.right)
  let s:p.normal.error = [ [ s:guiaccent0, s:guishade0, s:accent0, s:shade0 ] ]
  let s:p.normal.warning = [ [ s:guiaccent2, s:guishade1, s:accent2, s:shade1 ] ]

  let g:lightline#colorscheme#ThemerVimLightline#palette = lightline#colorscheme#fill(s:p)

  