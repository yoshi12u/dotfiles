  set laststatus=2
" ステータスラインの情報
  set statusline=%<     " 行が長すぎるときに切り詰める位置
  set statusline+=%m    " %m 修正フラグ
  set statusline+=%r    " %r 読み込み専用フラグ
  set statusline+=%h    " %h ヘルプバッファフラグ
  set statusline+=%w    " %w プレビューウィンドウフラグ
  set statusline+=\     " 空白スペース
  set statusline+=%f    " バッファ内のファイルのパス
  set statusline+=\     " 空白スペース
  set statusline+=%{fugitive#statusline()}  " Gitのブランチ名を表示
  set statusline+=%=    " 左寄せ項目と右寄せ項目の区切り
  set statusline+=\ \   " 空白スペース2個
  set statusline+=%1l   " 何行目にカーソルがあるか
  set statusline+=/
  set statusline+=%L    " バッファ内の総行数
  set statusline+=,
  set statusline+=%c    " 何列目にカーソルがあるか
  set statusline+=%V    " 画面上の何列目にカーソルがあるか
  set statusline+=\ \   " 空白スペース2個
  set statusline+=%P    " ファイル内の何％の位置にあるか
  set statusline+=\     " 空白スペース2個
  set statusline+=[pwd:%{getcwd()}]
