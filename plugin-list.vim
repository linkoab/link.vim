" # Bundle List
" ## vimproc
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimproc', {
\ 'build' : {
\     'windows' :'make -f make_mingw32.mak',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'unix' : 'make -f make_unix.mak',
\    },
\ }


" ## NERDTree
NeoBundle 'scrooloose/nerdtree'
nmap <leader>e	:<C-u>NERDTree<CR>
"nmap <F4>		:<C-u>NERDTree<CR>

" ## SrcExpl 
NeoBundle 'wesleyche/SrcExpl'
map <leader>s  :<C-u>SrcExplToggle<CR>
"
"" // The switch of the Source Explorer 
nmap <F8> :SrcExplToggle<CR> 
""
"" " // Set the height of Source Explorer window 
let g:SrcExpl_winHeight = 8 
""
"" " // Set 100 ms for refreshing the Source Explorer 
let g:SrcExpl_refreshTime = 100 
""
"" // Set 'Enter' key to jump into the exact definition context 
let g:SrcExpl_jumpKey = '<ENTER>'
""
"" // Set 'Space' key for back from the definition context 
let g:SrcExpl_gobackKey = '<SPACE>'
""
"" " // In order to Avoid conflicts, the Source Explorer should know what  plugins 
"" " // are using buffers. And you need add their bufname into the list below 
"" " // according to the command ':buffers!'
let g:SrcExpl_pluginList = [ 
\ '__Tag_List__',
\ '_NERD_tree_', 
\ 'Source_Explorer' 
\ ] 

"" // Enable/Disable the local definition "searching, and note that this is not 
"" // guaranteed to work, the Source Explorer "doesn't check the syntax for now. 
"" // It only searches for a match with the keyword according to command 'gd' 
let g:SrcExpl_searchLocalDef = 1 
"
"" // Do not let the Source Explorer update the "tags file when opening 
let g:SrcExpl_isUpdateTags = 0 
"
"" // Use 'Exuberant Ctags' with '--sort=foldcase "-R .' or '-L cscope.files' to 
"" // create/update the tags file 
let g:SrcExpl_updateTagsCmd = 'ctags --sort=foldcase -R .' 
"
"" // Set '<F12>' key for updating the tags file "artificially 
let g:SrcExpl_updateTagsKey = '<F12>' 
"
"" // Set '<F3>' key for displaying the previous definition in the jump list 
let g:SrcExpl_prevDefKey = '<F3>'
"
"" // Set '<F4>' key for displaying the next "definition in the jump list 
let g:SrcExpl_nextDefKey = '<F4>' 

" ## Tagbar
NeoBundle 'majutsushi/tagbar'
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
nmap <leader>t :<C-u>TagbarToggle<CR>
"nnoremap <F3> :<C-u>TagbarToggle<CR>

if has('win32')
	let g:tagbar_ctags_bin='C:\ctags.exe'
endif

" ## vim-airline
" replace 'vim-powerline'.
NeoBundle 'bling/vim-airline'
"let g:airline_powerline_fonts = 1

NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'chazy/cscope_maps'
