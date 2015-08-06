let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <C-Space> 
inoremap <expr> <Up> pumvisible() ? "\" : "\<Up>"
inoremap <expr> <S-Tab> pumvisible() ? "\" : "\<S-Tab>"
inoremap <expr> <Down> pumvisible() ? "\" : "\<Down>"
map! <S-Insert> <MiddleMouse>
inoremap <D-BS> 
inoremap <M-BS> 
inoremap <M-Down> }
inoremap <D-Down> <C-End>
inoremap <M-Up> {
inoremap <D-Up> <C-Home>
noremap! <M-Right> <C-Right>
noremap! <D-Right> <End>
noremap! <M-Left> <C-Left>
noremap! <D-Left> <Home>
imap <Nul> <C-Space>
map T :TaskList
nnoremap \d :YcmShowDetailedDiagnostic
nmap <silent> \ig <Plug>IndentGuidesToggle
nmap <silent> \w\t <Plug>VimwikiTabMakeDiaryNote
nmap <silent> \w\w <Plug>VimwikiMakeDiaryNote
nmap <silent> \w\i <Plug>VimwikiDiaryGenerateLinks
nmap <silent> \wi <Plug>VimwikiDiaryIndex
nmap <silent> \ws <Plug>VimwikiUISelect
nmap <silent> \wt <Plug>VimwikiTabIndex
nmap <silent> \ww <Plug>VimwikiIndex
nnoremap \e :Unite -no-split -buffer-name=buffer  buffer
nnoremap \y :Unite -no-split -buffer-name=yank    history/yank
nnoremap \o :Unite -no-split -buffer-name=outline -start-insert outline
nnoremap \r :Unite -no-split -buffer-name=mru     -start-insert file_mru
nnoremap \f :Unite -no-split -buffer-name=files   -start-insert file
nnoremap \t :Unite -no-split -buffer-name=files   -start-insert file_rec/async:!
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
map <S-Insert> <MiddleMouse>
noremap <M-Down> }
noremap <D-Down> <C-End>
noremap <M-Up> {
noremap <D-Up> <C-Home>
noremap <M-Right> <C-Right>
noremap <D-Right> <End>
noremap <M-Left> <C-Left>
noremap <D-Left> <Home>
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
map <C-0> :buffers 
map <C-9> :buffer 9 
map <C-8> :buffer 8 
map <C-7> :buffer 7 
map <C-6> :buffer 6 
map <C-5> :buffer 5 
map <C-4> :buffer 4 
map <C-3> :buffer 3 
map <C-2> :buffer 2 
map <C-1> :buffer 1 
map <silent> <C-Right> 
map <silent> <C-Left> 
map <C-PageDown> :bp 
map <C-PageUp> :bn 
map <C-F9> :SyntasticReset 
map <S-F9> :Errors 
map <F9> :SyntasticCheck 
map <F8> :TlistToggle 
map <F7> :WMToggle 
map <F5> !/usr/local/bin/boxes -p h2 -s 80 -i text -t 4 -d shell 
map <F4> !/usr/local/bin/boxes -p h2 -s 80 -i text -t 4 -d pound-cmt 
map <F3> !/usr/local/bin/boxes -r 
map <F2> !par 80 
map <F1> :ls:b 
vmap <BS> "-d
inoremap <expr> 	 pumvisible() ? "\" : "\	"
imap  <Plug>DiscretionaryEnd
inoremap # X#
let &cpo=s:cpo_save
unlet s:cpo_save
set autochdir
set autoindent
set background=dark
set backspace=indent,eol,start
set backup
set backupdir=~/.vim.backups
set cindent
set cinoptions=l1,c4,(s,U1,w1,m1,j1
set cinwords=if,elif,else,for,while,try,except,finally,def,class
set cmdheight=2
set completefunc=youcompleteme#Complete
set completeopt=preview,menuone
set cpoptions=aAceFsB
set cscopetag
set cscopeverbose
set directory=~/.vim.tmp
set noequalalways
set expandtab
set exrc
set fileencodings=ucs-bom,utf-8,default,latin1
set guifont=Menlo\ Regular:h14
set guitablabel=%M%t
set helplang=en
set hidden
set highlight=
set hlsearch
set incsearch
set nojoinspaces
set langmenu=none
set laststatus=2
set mouse=a
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Vundle.vim,~/.vim/bundle/YouCompleteMe,~/.vim/bundle/vim-fugitive,~/.vim/bundle/vimwiki,~/.vim/bundle/vitality.vim,~/.vim/bundle/powerline,~/.vim/bundle/taglist.vim,~/.vim/bundle/vim-plugin-minibufexpl,~/.vim/bundle/vim-endwise,~/.vim/bundle/vim-indent-guides,~/.vim/bundle/syntastic,~/.vim/bundle/vim-ruby,~/.vim/bundle/python-mode,~/.vim/bundle/vim-cucumber,~/.vim/bundle/tabular,~/.vim/bundle/vim-markdown,~/.vim/bundle/vim-better-whitespace,~/.vim/bundle/ColorSchemeMenuMaker,~/.vim/bundle/vim-colorschemes,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/vim-json,~/.vim/bundle/todolist.vim,~/.vim/bundle/unite.vim,~/.vim/bundle/vim-sqf-syntax,~/.vim/bundle/vimerl,/usr/local/Cellar/macvim/7.4-77/MacVim.app/Contents/Resources/vim/vimfiles,/usr/local/Cellar/macvim/7.4-77/MacVim.app/Contents/Resources/vim/runtime,/usr/local/Cellar/macvim/7.4-77/MacVim.app/Contents/Resources/vim/vimfiles/after,~/.vim/after,~/.vim/bundle/Vundle.vim,~/.vim/bundle/Vundle.vim/after,~/.vim/bundle/YouCompleteMe/after
set shiftround
set shiftwidth=2
set shortmess=filnxtToOc
set showcmd
set showmatch
set smartindent
set smarttab
set softtabstop=2
set splitbelow
set statusline=\ [%n]%#warningmsg#%{SyntasticStatuslineFlag()}%*%{&ff!='unix'?'['.&ff.']':''}%*%y\ %<%F%m%=%5l/%L%4v\ 
set tabstop=2
set tags=tags;
set termencoding=utf-8
set textwidth=80
set title
set updatecount=20
set updatetime=1000
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Arma/eagleeye/fa3_c57_thetanoansarecoming_v1.Altis/f/assignGear
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 ~/Arma/eagleeye/fa3_c57_thetanoansarecoming_v1.Altis/README.md
badd +0 ~/Arma/eagleeye/fa3_c57_thetanoansarecoming_v1.Altis/briefing.sqf
badd +0 ~/Arma/eagleeye/fa3_c57_thetanoansarecoming_v1.Altis/description.ext
badd +48 ~/Arma/eagleeye/fa3_c57_thetanoansarecoming_v1.Altis/init.sqf
badd +1 ~/Arma/eagleeye/fa3_c57_thetanoansarecoming_v1.Altis/mission.sqm
badd +0 ~/Arma/eagleeye/fa3_c57_thetanoansarecoming_v1.Altis/readme.txt
badd +1 ~/Arma/eagleeye/fa3_c57_thetanoansarecoming_v1.Altis/f/assignGear/fn_assignGear.sqf
badd +331 ~/Arma/eagleeye/fa3_c57_thetanoansarecoming_v1.Altis/f/assignGear/f_assignGear_fia.sqf
badd +644 ~/Arma/eagleeye/fa3_c57_thetanoansarecoming_v1.Altis/f/assignGear/f_assignGear_fia_b.sqf
argglobal
silent! argdel *
argadd ~/Arma/eagleeye/fa3_c57_thetanoansarecoming_v1.Altis/README.md
argadd ~/Arma/eagleeye/fa3_c57_thetanoansarecoming_v1.Altis/briefing.sqf
argadd ~/Arma/eagleeye/fa3_c57_thetanoansarecoming_v1.Altis/description.ext
argadd ~/Arma/eagleeye/fa3_c57_thetanoansarecoming_v1.Altis/init.sqf
argadd ~/Arma/eagleeye/fa3_c57_thetanoansarecoming_v1.Altis/mission.sqm
argadd ~/Arma/eagleeye/fa3_c57_thetanoansarecoming_v1.Altis/readme.txt
argadd fn_assignGear.sqf
argadd f_assignGear_fia.sqf
argadd f_assignGear_fia_b.sqf
edit ~/Arma/eagleeye/fa3_c57_thetanoansarecoming_v1.Altis/f/assignGear/f_assignGear_fia.sqf
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 1 + 26) / 53)
exe '2resize ' . ((&lines * 48 + 26) / 53)
argglobal
enew
file ~/Arma/eagleeye/fa3_c57_thetanoansarecoming_v1.Altis/-MiniBufExplorer-
let s:cpo_save=&cpo
set cpo&vim
nnoremap <buffer> h :call search('\[[0-9]*:[^\]]*\]','b'):<BS>
nnoremap <buffer> j gj
nnoremap <buffer> k gk
nnoremap <buffer> l :call search('\[[0-9]*:[^\]]*\]'):<BS>
nnoremap <buffer> <Left> :call search('\[[0-9]*:[^\]]*\]','b'):<BS>
nnoremap <buffer> <Right> :call search('\[[0-9]*:[^\]]*\]'):<BS>
nnoremap <buffer> <Down> gj
nnoremap <buffer> <Up> gk
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=delete
setlocal nobuflisted
setlocal buftype=nofile
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=l1,c4,(s,U1,w1,m1,j1
setlocal cinwords=if,elif,else,for,while,try,except,finally,def,class
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'minibufexpl'
setlocal filetype=minibufexpl
endif
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=
setlocal modeline
setlocal nomodifiable
setlocal nrformats=octal,hex
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=-MiniBufExplorer-
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'minibufexpl'
setlocal syntax=minibufexpl
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal winfixheight
setlocal winfixwidth
setlocal wrap
setlocal wrapmargin=0
wincmd w
argglobal
edit ~/Arma/eagleeye/fa3_c57_thetanoansarecoming_v1.Altis/f/assignGear/f_assignGear_fia.sqf
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=l1,c4,(s,U1,w1,m1,j1
setlocal cinwords=if,elif,else,for,while,try,except,finally,def,class
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'sqf'
setlocal filetype=sqf
endif
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'sqf'
setlocal syntax=sqf
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 145 - ((0 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
145
normal! 030|
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 1 + 26) / 53)
exe '2resize ' . ((&lines * 48 + 26) / 53)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOc
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
