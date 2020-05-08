autocmd FileType dart let b:coc_root_patterns = ['.pubspec.lock']

let g:lsc_auto_map = {
    \ 'GoToDefinition': 'gd',
    \ 'GoToDefinitionSplit': ['<C-W>]', '<C-W><C-]>'],
    \ 'FindReferences': 'gr',
    \ 'NextReference': ']r',
    \ 'PreviousReference': '[r',
    \ 'FindImplementations': 'gi',
    \ 'FindCodeActions': 'ga',
    \ 'Rename': '<leader>rn',
    \ 'ShowHover': 'K',
    \ 'DocumentSymbol': 'go',
    \ 'WorkspaceSymbol': 'gS',
    \ 'SignatureHelp': 'gm',
    \ 'Completion': 'completefunc',
    \}

noremap <buffer> <leader>tr :DartToggleMethodBodyType<cr>
