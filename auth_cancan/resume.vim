let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
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
inoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
inoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
inoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
inoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
inoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
inoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
inoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
inoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
inoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
inoremap <Plug>TComment_s :TCommentAs =&ft_
inoremap <Plug>TComment_n :TCommentAs =&ft 
inoremap <Plug>TComment_a :TCommentAs 
inoremap <Plug>TComment_b :TCommentBlock mode=#
inoremap <Plug>TComment_i v:TCommentInline mode=#
inoremap <Plug>TComment_r :TCommentRight
inoremap <Plug>TComment_  :TComment 
inoremap <Plug>TComment_p :norm! m`vip:TComment``
inoremap <Plug>TComment_ :TComment
inoremap <Plug>(emmet-anchorize-summary) =emmet#util#closePopup()=emmet#anchorizeURL(1)
inoremap <Plug>(emmet-anchorize-url) =emmet#util#closePopup()=emmet#anchorizeURL(0)
inoremap <Plug>(emmet-remove-tag) =emmet#util#closePopup()=emmet#removeTag()
inoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
inoremap <Plug>(emmet-toggle-comment) =emmet#util#closePopup()=emmet#toggleComment()
inoremap <Plug>(emmet-image-size) =emmet#util#closePopup()=emmet#imageSize()
inoremap <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
inoremap <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
inoremap <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
inoremap <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
inoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
inoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
inoremap <Plug>(emmet-update-tag) =emmet#util#closePopup()=emmet#updateTag()
inoremap <Plug>(emmet-expand-word) =emmet#util#closePopup()=emmet#expandAbbr(1,"")
inoremap <Plug>(emmet-expand-abbr) =emmet#util#closePopup()=emmet#expandAbbr(0,"")
nmap  :winpos =getwinposx() - 30 =getwinposy()
noremap  :Unite bookmark
nmap  :winpos =getwinposx() + 30 =getwinposy()
map G :tabnew +gr\ \ app/**/*rb
map g :gr  app/**/*rb
map r :!open -a MacVim -n =expand("%:p")
map h :set columns=160
map l :set lines=60:set columns=100
map m :set lines=40:set columns=100
nmap  :noh
nmap  2+
nmap  2-
vmap c <Plug>(emmet-code-pretty)
vmap m <Plug>(emmet-merge-lines)
nmap A <Plug>(emmet-anchorize-summary)
nmap a <Plug>(emmet-anchorize-url)
nmap k <Plug>(emmet-remove-tag)
nmap j <Plug>(emmet-split-join-tag)
nmap / <Plug>(emmet-toggle-comment)
nmap i <Plug>(emmet-image-size)
nmap N <Plug>(emmet-move-prev)
nmap n <Plug>(emmet-move-next)
vmap D <Plug>(emmet-balance-tag-outword)
nmap D <Plug>(emmet-balance-tag-outword)
vmap d <Plug>(emmet-balance-tag-inward)
nmap d <Plug>(emmet-balance-tag-inward)
nmap u <Plug>(emmet-update-tag)
nmap ; <Plug>(emmet-expand-word)
vmap , <Plug>(emmet-expand-abbr)
nmap , <Plug>(emmet-expand-abbr)
nmap  <Plug>TComment_
nmap 1 <Plug>TComment_1
nmap 2 <Plug>TComment_2
nmap 3 <Plug>TComment_3
nmap 4 <Plug>TComment_4
nmap 5 <Plug>TComment_5
nmap 6 <Plug>TComment_6
nmap 7 <Plug>TComment_7
nmap 8 <Plug>TComment_8
nmap 9 <Plug>TComment_9
vmap 9 <Plug>TComment_9
omap 9 <Plug>TComment_9
vmap 8 <Plug>TComment_8
omap 8 <Plug>TComment_8
vmap 7 <Plug>TComment_7
omap 7 <Plug>TComment_7
vmap 6 <Plug>TComment_6
omap 6 <Plug>TComment_6
vmap 5 <Plug>TComment_5
omap 5 <Plug>TComment_5
vmap 4 <Plug>TComment_4
omap 4 <Plug>TComment_4
vmap 3 <Plug>TComment_3
omap 3 <Plug>TComment_3
vmap 2 <Plug>TComment_2
omap 2 <Plug>TComment_2
vmap 1 <Plug>TComment_1
omap 1 <Plug>TComment_1
map ca <Plug>TComment_ca
map cc <Plug>TComment_cc
map s <Plug>TComment_s
map n <Plug>TComment_n
map a <Plug>TComment_a
map b <Plug>TComment_b
map i <Plug>TComment_i
map r <Plug>TComment_r
map   <Plug>TComment_ 
map p <Plug>TComment_p
vmap  <Plug>TComment_
omap  <Plug>TComment_
nmap   
nmap ,s :source ~/.vimrc
nmap ,v :tabnew ~/.vimrc
nmap ,e :Sexplore
map Q gq
smap \__ <Plug>TComment_\__
nmap \__ <Plug>TComment_\__
nmap \ru :RuboCop
nmap <silent> \f <Plug>(migemo-searchchar)
map \_s <Plug>TComment_\_s
map \_n <Plug>TComment_\_n
map \_a <Plug>TComment_\_a
map \_b <Plug>TComment_\_b
map \_r <Plug>TComment_\_r
xmap \_i <Plug>TComment_\_i
map \_  <Plug>TComment_\_ 
map \_p <Plug>TComment_\_p
xmap \__ <Plug>TComment_\__
omap \__ <Plug>TComment_\__
nmap \scp <Plug>SQLUCreateProcedure
nmap \scdt <Plug>SQLUGetColumnDataType
nmap \scd <Plug>SQLUGetColumnDef
nmap \scl <Plug>SQLUCreateColumnList
vmap \sf <Plug>SQLUFormatter
nmap \sf <Plug>SQLUFormatter
vmap \sfs <Plug>SQLUFormatter
nmap \sfs <Plug>SQLUFormatter
vmap \sfr <Plug>SQLUFormatStmts
nmap \sfr <Plug>SQLUFormatStmts
map \rwp <Plug>RestoreWinPosn
map \swp <Plug>SaveWinPosn
vmap <silent> \tt :call AlignMaps#Vis("tt")
nmap \tt <Plug>AM_tt
vmap <silent> \tsq :call AlignMaps#Vis("tsq")
nmap \tsq <Plug>AM_tsq
vmap <silent> \tsp :call AlignMaps#Vis("tsp")
nmap \tsp <Plug>AM_tsp
vmap <silent> \tml :call AlignMaps#Vis("tml")
nmap \tml <Plug>AM_tml
vmap <silent> \tab :call AlignMaps#Vis("tab")
nmap \tab <Plug>AM_tab
vmap <silent> \m= :call AlignMaps#Vis("m=")
nmap \m= <Plug>AM_m=
vmap <silent> \tW@ :call AlignMaps#Vis("tW@")
nmap \tW@ <Plug>AM_tW@
vmap <silent> \t@ :call AlignMaps#Vis("t@")
nmap \t@ <Plug>AM_t@
vmap <silent> \t~ :call AlignMaps#Vis("t~")
nmap \t~ <Plug>AM_t~
vmap <silent> \t? :call AlignMaps#Vis("t?")
nmap \t? <Plug>AM_t?
vmap <silent> \w= :call AlignMaps#Vis("w=")
nmap \w= <Plug>AM_w=
vmap <silent> \ts= :call AlignMaps#Vis("ts=")
nmap \ts= <Plug>AM_ts=
vmap <silent> \ts< :call AlignMaps#Vis("ts<")
nmap \ts< <Plug>AM_ts<
vmap <silent> \ts; :call AlignMaps#Vis("ts;")
nmap \ts; <Plug>AM_ts;
vmap <silent> \ts: :call AlignMaps#Vis("ts:")
nmap \ts: <Plug>AM_ts:
vmap <silent> \ts, :call AlignMaps#Vis("ts,")
nmap \ts, <Plug>AM_ts,
vmap <silent> \t= :call AlignMaps#Vis("t=")
nmap \t= <Plug>AM_t=
vmap <silent> \t< :call AlignMaps#Vis("t<")
nmap \t< <Plug>AM_t<
vmap <silent> \t; :call AlignMaps#Vis("t;")
nmap \t; <Plug>AM_t;
vmap <silent> \t: :call AlignMaps#Vis("t:")
nmap \t: <Plug>AM_t:
vmap <silent> \t, :call AlignMaps#Vis("t,")
nmap \t, <Plug>AM_t,
vmap <silent> \t# :call AlignMaps#Vis("t#")
nmap \t# <Plug>AM_t#
vmap <silent> \t| :call AlignMaps#Vis("t|")
nmap \t| <Plug>AM_t|
vmap <silent> \T~ :call AlignMaps#Vis("T~")
nmap \T~ <Plug>AM_T~
vmap <silent> \Tsp :call AlignMaps#Vis("Tsp")
nmap \Tsp <Plug>AM_Tsp
vmap <silent> \Tab :call AlignMaps#Vis("Tab")
nmap \Tab <Plug>AM_Tab
vmap <silent> \TW@ :call AlignMaps#Vis("TW@")
nmap \TW@ <Plug>AM_TW@
vmap <silent> \T@ :call AlignMaps#Vis("T@")
nmap \T@ <Plug>AM_T@
vmap <silent> \T? :call AlignMaps#Vis("T?")
nmap \T? <Plug>AM_T?
vmap <silent> \T= :call AlignMaps#Vis("T=")
nmap \T= <Plug>AM_T=
vmap <silent> \T< :call AlignMaps#Vis("T<")
nmap \T< <Plug>AM_T<
vmap <silent> \T; :call AlignMaps#Vis("T;")
nmap \T; <Plug>AM_T;
vmap <silent> \T: :call AlignMaps#Vis("T:")
nmap \T: <Plug>AM_T:
vmap <silent> \Ts, :call AlignMaps#Vis("Ts,")
nmap \Ts, <Plug>AM_Ts,
vmap <silent> \T, :call AlignMaps#Vis("T,")
nmap \T, <Plug>AM_T,
vmap <silent> \T# :call AlignMaps#Vis("T#")
nmap \T# <Plug>AM_T#
vmap <silent> \T| :call AlignMaps#Vis("T|")
nmap \T| <Plug>AM_T|
map \Htd <Plug>AM_Htd
vmap <silent> \anum :call AlignMaps#Vis("anum")
nmap \anum <Plug>AM_anum
vmap <silent> \aenum :call AlignMaps#Vis("aenum")
nmap \aenum <Plug>AM_aenum
vmap <silent> \aunum :call AlignMaps#Vis("aunum")
nmap \aunum <Plug>AM_aunum
vmap <silent> \afnc :call AlignMaps#Vis("afnc")
nmap \afnc <Plug>AM_afnc
vmap <silent> \adef :call AlignMaps#Vis("adef")
nmap \adef <Plug>AM_adef
vmap <silent> \adec :call AlignMaps#Vis("adec")
nmap \adec <Plug>AM_adec
vmap <silent> \ascom :call AlignMaps#Vis("ascom")
nmap \ascom <Plug>AM_ascom
vmap <silent> \aocom :call AlignMaps#Vis("aocom")
nmap \aocom <Plug>AM_aocom
vmap <silent> \adcom :call AlignMaps#Vis("adcom")
nmap \adcom <Plug>AM_adcom
vmap <silent> \acom :call AlignMaps#Vis("acom")
nmap \acom <Plug>AM_acom
vmap <silent> \abox :call AlignMaps#Vis("abox")
nmap \abox <Plug>AM_abox
vmap <silent> \a( :call AlignMaps#Vis("a(")
nmap \a( <Plug>AM_a(
vmap <silent> \a= :call AlignMaps#Vis("a=")
nmap \a= <Plug>AM_a=
vmap <silent> \a< :call AlignMaps#Vis("a<")
nmap \a< <Plug>AM_a<
vmap <silent> \a, :call AlignMaps#Vis("a,")
nmap \a, <Plug>AM_a,
vmap <silent> \a? :call AlignMaps#Vis("a?")
nmap \a? <Plug>AM_a?
nmap cr <Plug>Coerce
xmap g> <Plug>TComment_Comment
nmap <silent> g>b <Plug>TComment_Commentb
nmap <silent> g>c <Plug>TComment_Commentc
nmap <silent> g> <Plug>TComment_Comment
xmap g< <Plug>TComment_Uncomment
nmap <silent> g<b <Plug>TComment_Uncommentb
nmap <silent> g<c <Plug>TComment_Uncommentc
nmap <silent> g< <Plug>TComment_Uncomment
xmap gc <Plug>TComment_gc
nmap <silent> gcb <Plug>TComment_gcb
nmap <silent> gcc <Plug>TComment_gcc
nmap <silent> gc9c <Plug>TComment_gc9c
nmap <silent> gc9 <Plug>TComment_gc9
nmap <silent> gc8c <Plug>TComment_gc8c
nmap <silent> gc8 <Plug>TComment_gc8
nmap <silent> gc7c <Plug>TComment_gc7c
nmap <silent> gc7 <Plug>TComment_gc7
nmap <silent> gc6c <Plug>TComment_gc6c
nmap <silent> gc6 <Plug>TComment_gc6
nmap <silent> gc5c <Plug>TComment_gc5c
nmap <silent> gc5 <Plug>TComment_gc5
nmap <silent> gc4c <Plug>TComment_gc4c
nmap <silent> gc4 <Plug>TComment_gc4
nmap <silent> gc3c <Plug>TComment_gc3c
nmap <silent> gc3 <Plug>TComment_gc3
nmap <silent> gc2c <Plug>TComment_gc2c
nmap <silent> gc2 <Plug>TComment_gc2
nmap <silent> gc1c <Plug>TComment_gc1c
nmap <silent> gc1 <Plug>TComment_gc1
nmap <silent> gc <Plug>TComment_gc
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
omap ic <Plug>TComment_ic
vmap ic <Plug>TComment_ic
noremap j gj
noremap k gk
noremap n nzz
nnoremap <SNR>125_: :=v:count ? v:count : ''
nnoremap <Plug>TComment_ :TComment
snoremap <Plug>TComment_\__ :TComment
nnoremap <Plug>TComment_\__ :TComment
nnoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
nnoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
nnoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
nnoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
nnoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
nnoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
nnoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
nnoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
nnoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
nnoremap <SNR>116_: :=v:count ? v:count : ''
map <S-Insert> <MiddleMouse>
noremap <M-Down> }
noremap <D-Down> <C-End>
noremap <M-Up> {
noremap <D-Up> <C-Home>
noremap <M-Right> <C-Right>
noremap <D-Right> <End>
noremap <M-Left> <C-Left>
noremap <D-Left> <Home>
vnoremap <silent> <Plug>(quickrun) :QuickRun -mode v
nnoremap <silent> <Plug>(quickrun) :QuickRun -mode n
nnoremap <silent> <Plug>(quickrun-op) :set operatorfunc=quickrun#operatorg@
nnoremap <silent> <Plug>(migemo-searchchar) :call migemo#SearchChar(0)
nnoremap <SNR>105_: :=v:count ? v:count : ''
nnoremap <silent> <Plug>TComment_gc9c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc9cg@
nnoremap <silent> <Plug>TComment_gc8c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc8cg@
nnoremap <silent> <Plug>TComment_gc7c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc7cg@
nnoremap <silent> <Plug>TComment_gc6c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc6cg@
nnoremap <silent> <Plug>TComment_gc5c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc5cg@
nnoremap <silent> <Plug>TComment_gc4c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc4cg@
nnoremap <silent> <Plug>TComment_gc3c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc3cg@
nnoremap <silent> <Plug>TComment_gc2c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc2cg@
nnoremap <silent> <Plug>TComment_gc1c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc1cg@
vnoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
onoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
vnoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
onoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
vnoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
onoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
vnoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
onoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
vnoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
onoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
vnoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
onoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
vnoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
onoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
vnoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
onoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
vnoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
onoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
nnoremap <silent> <Plug>TComment_gc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gcg@
xnoremap <Plug>TComment_gc :TCommentMaybeInline
nnoremap <silent> <Plug>TComment_gcb :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gcbg@
nnoremap <silent> <Plug>TComment_gcc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gccg@$
noremap <Plug>TComment_ic :call tcomment#TextObjectInlineComment()
xnoremap <silent> <Plug>TComment_Comment :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | '<,'>TCommentMaybeInline!
nnoremap <silent> <Plug>TComment_Commentb :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Commentbg@
nnoremap <silent> <Plug>TComment_Commentc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Commentcg@$
nnoremap <silent> <Plug>TComment_Comment :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Commentg@
xnoremap <silent> <Plug>TComment_Uncomment :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | call tcomment#SetOption("mode_extra", "U") | '<,'>TCommentMaybeInline
nnoremap <silent> <Plug>TComment_Uncommentb :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Uncommentbg@
nnoremap <silent> <Plug>TComment_Uncommentc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Uncommentcg@$
nnoremap <silent> <Plug>TComment_Uncomment :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Uncommentg@
noremap <Plug>TComment_\_s :TCommentAs =&ft_
noremap <Plug>TComment_\_n :TCommentAs =&ft 
noremap <Plug>TComment_\_a :TCommentAs 
noremap <Plug>TComment_\_b :TCommentBlock
noremap <Plug>TComment_\_r :TCommentRight
xnoremap <Plug>TComment_\_i :TCommentInline
noremap <Plug>TComment_\_  :TComment 
noremap <Plug>TComment_\_p vip:TComment
xnoremap <Plug>TComment_\__ :TCommentMaybeInline
onoremap <Plug>TComment_\__ :TComment
noremap <Plug>TComment_ca :call tcomment#SetOption("as", input("Comment as: ", &filetype, "customlist,tcomment#Complete"))
noremap <Plug>TComment_cc :call tcomment#SetOption("count", v:count1)
noremap <Plug>TComment_s :TCommentAs =&ft_
noremap <Plug>TComment_n :TCommentAs =&ft 
noremap <Plug>TComment_a :TCommentAs 
noremap <Plug>TComment_b :TCommentBlock
noremap <Plug>TComment_i v:TCommentInline mode=I#
noremap <Plug>TComment_r :TCommentRight
noremap <Plug>TComment_  :TComment 
noremap <Plug>TComment_p m`vip:TComment``
vnoremap <Plug>TComment_ :TCommentMaybeInline
onoremap <Plug>TComment_ :TComment
vnoremap <Plug>(emmet-code-pretty) :call emmet#codePretty()
vnoremap <Plug>(emmet-merge-lines) :call emmet#mergeLines()
nnoremap <Plug>(emmet-anchorize-summary) :call emmet#anchorizeURL(1)
nnoremap <Plug>(emmet-anchorize-url) :call emmet#anchorizeURL(0)
nnoremap <Plug>(emmet-remove-tag) :call emmet#removeTag()
nnoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
nnoremap <Plug>(emmet-toggle-comment) :call emmet#toggleComment()
nnoremap <Plug>(emmet-image-size) :call emmet#imageSize()
nnoremap <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
nnoremap <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
nnoremap <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
nnoremap <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
vnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-2)
nnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
vnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(2)
nnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
nnoremap <Plug>(emmet-update-tag) :call emmet#updateTag()
nnoremap <Plug>(emmet-expand-word) :call emmet#expandAbbr(1,"")
vnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(2,"")
nnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(3,"")
nmap <silent> <Plug>RestoreWinPosn :call RestoreWinPosn()
nmap <silent> <Plug>SaveWinPosn :call SaveWinPosn()
nmap <SNR>58_WE <Plug>AlignMapsWrapperEnd
map <SNR>58_WS <Plug>AlignMapsWrapperStart
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
map <F9> :!open =expand("%:p:h") -a Finder
map <F8> :!open =expand("%:p:h") -a iTerm
nnoremap <F6> :let @* = '%'
nmap <F5> <Plug>(quickrun)
map <F7> :set wrap!
map <F4> :cp
map <F3> :cn
map <F2> :let @" = expand("%:p")
vmap <BS> "-d
inoremap  u
imap A <Plug>(emmet-anchorize-summary)
imap a <Plug>(emmet-anchorize-url)
imap k <Plug>(emmet-remove-tag)
imap j <Plug>(emmet-split-join-tag)
imap / <Plug>(emmet-toggle-comment)
imap i <Plug>(emmet-image-size)
imap N <Plug>(emmet-move-prev)
imap n <Plug>(emmet-move-next)
imap D <Plug>(emmet-balance-tag-outword)
imap d <Plug>(emmet-balance-tag-inward)
imap u <Plug>(emmet-update-tag)
imap ; <Plug>(emmet-expand-word)
imap , <Plug>(emmet-expand-abbr)
imap 9 <Plug>TComment_9
imap 8 <Plug>TComment_8
imap 7 <Plug>TComment_7
imap 6 <Plug>TComment_6
imap 5 <Plug>TComment_5
imap 4 <Plug>TComment_4
imap 3 <Plug>TComment_3
imap 2 <Plug>TComment_2
imap 1 <Plug>TComment_1
imap s <Plug>TComment_s
imap n <Plug>TComment_n
imap a <Plug>TComment_a
imap b <Plug>TComment_b
imap i <Plug>TComment_i
imap r <Plug>TComment_r
imap   <Plug>TComment_ 
imap p <Plug>TComment_p
imap  <Plug>TComment_
abbr perform start_time = Time.now; p "処理概要 #{Time.now - start_time}s"
abbr logd logger.debug("DEBUG: params => #{params}")
abbr deprecated # HACK: deprecated.
abbr bind binding.pry
abbr dumptemplatevar <pre><!--{php}-->print_r(get_template_vars());<!--{/php}--></pre>
abbr debugcon <!--{debug}-->
abbr tempurl <!--{$TPL_URLPATH}-->
abbr trace echo "<pre style='text-align:left;'>";var_dump(debug_print_backtrace());echo "</pre>";
abbr var_dump echo "<pre style='text-align:left;'>";var_dump($_SESSION);echo "</pre>";
abbr tracelog $this->log("---- TRACE LOG ----".__LINE__);
abbr printlog $this->p();<Left><Left>
abbr debugprint SC_Utils::sfPrintR();<Left><Left>
abbr debuglog GC_Utils_Ex::gfDebugLog("---- TRACE ----");<Left><Left>
abbr YDATE =strftime("%Y/%m/%d")
let &cpo=s:cpo_save
unlet s:cpo_save
set ambiwidth=double
set autoindent
set backspace=indent,eol,start
set backup
set backupdir=/tmp
set clipboard=unnamed
set cmdheight=2
set display=truncate
set noequalalways
set errorformat=%\\S%\\+\ \ %#%[cefi]%[rxod]%[eir]%[a-z]%#%\\x1b[0m\ %\\+%\\S%\\+%$%\\&%\\x1b%\\S%\\+\ \ %#%m%\\>%\\x1b[0m\ \ %#%f,%\\s\ %#%[cefi]%[rxod]%[eir]%[a-z]%#\ %\\+%\\S%\\+%$%\\&%\\s\ %#%m%\\>\ \ %#%f,Overwrite%.%#%\\S%\\+\ \ %#%m%\\x1b[0m\ \ %#%f,%-GOverwrite%.%#\"h\"%.%#,%.%#rails\ test\ %f:%l,%+GCurrent\ version:%.%#,%+G\ %#Status\ %#Migration\ ID%.%#,%+G\ The\ fixture\ ID\ for\ %.%#,%f:\ %s\ (%m)%$%\\&%.%#/fixtures/%.%#(%\\d%\\+),%+G\ %#Prefix\ %#Verb%.%#,%+G\ %#Code\ LOC:\ %.%#,%+GAbout\ your\ application's\ environment,%+Grun\ %\\S%#::Application.routes,%+Irails\ %\\S%\\+%\\s%\\+#\ %.%#,%+Eruby:%.%#(LoadError),%+EUsage:%.%#,%+ECould\ not\ find\ generator%.%#,%+EType\ 'rails'\ for\ help.,%D(in\ %f),%\\s%#from\ %f:%l:%m,%\\s%#from\ %f:%l:,%\\s%##\ %f:%l:%m,%\\s%##\ %f:%l,%\\s%#[%f:%l:\ %#%m,%\\s%#%f:%l:\ %#%m,%\\s%#%f:%l:,%m\ [%f:%l]:,%+Erake\ aborted!,%+EDon't\ know\ how\ to\ build\ task\ %.%#,%+Einvalid\ option:%.%#,%+Irake\ %\\S%\\+%\\s%\\+#\ %.%#,chdir\ /Users/toka/rails_work/auth_cancan
set expandtab
set fileencodings=guess,ucs-bom,latin1,iso-2022-jp-3,utf-8,euc-jisx0213,euc-jp
set formatexpr=autofmt#japanese#formatexpr()
set formatoptions=tcqmM
set grepprg=grep\ -inr\ $*\ /dev/null
set guifont=Osaka-Mono:h14
set guitablabel=%M%t
set helplang=ja
set history=200
set hlsearch
set ignorecase
set noimdisable
set imdisableactivate
set iminsert=0
set imsearch=0
set incsearch
set iskeyword=@,48-57,_,128-167,224-235
set langmenu=ja_ja.utf-8.macvim
set langnoremap
set nolangremap
set laststatus=2
set luadll=/Applications/MacVim.app/Contents/Frameworks/libluajit-5.1.2.dylib
set migemo
set migemodict=/Applications/MacVim.app/Contents/Resources/vim/runtime/dict/migemo-dict
set mouse=a
set nrformats=bin,hex
set path=~/**,.**
set printencoding=utf-8
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set printmbcharset=UniJIS
set printmbfont=r:HiraMinProN-W3,b:HiraMinProN-W6
set ruler
set runtimepath=~/.vim,~/.vim/bundle/.neobundle,/Applications/MacVim.app/Contents/Resources/vim/vimfiles,/Applications/MacVim.app/Contents/Resources/vim/runtime,/Applications/MacVim.app/Contents/Resources/vim/vimfiles/after,~/.vim/after,/Applications/MacVim.app/Contents/Resources/vim/plugins/autofmt,/Applications/MacVim.app/Contents/Resources/vim/plugins/golang,/Applications/MacVim.app/Contents/Resources/vim/plugins/kaoriya,/Applications/MacVim.app/Contents/Resources/vim/plugins/vimdoc-ja,/Applications/MacVim.app/Contents/Resources/vim/plugins/vimproc,~/.vim/bundle/*/
set scrolloff=5
set shiftwidth=2
set showcmd
set showmatch
set smartcase
set tabstop=2
set termencoding=utf-8
set title
set ttimeout
set ttimeoutlen=100
set undofile
set wildmenu
set window=39
set nowrapscan
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/rails_work/auth_cancan
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +13 ~/Desktop/cancancan.vim
badd +1 app/controllers/application_controller.rb
badd +1 Gemfile
badd +1 app/models/ability.rb
badd +1 app/controllers/customers_controller.rb
argglobal
silent! argdel *
set stal=2
edit app/controllers/application_controller.rb
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 26 + 20) / 40)
exe '2resize ' . ((&lines * 10 + 20) / 40)
argglobal
let s:cpo_save=&cpo
set cpo&vim
cmap <buffer>  <Plug><cfile>
cmap <buffer>  <Plug><cword>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%\\S%\\+\ \ %#%[cefi]%[rxod]%[eir]%[a-z]%#%\\x1b[0m\ %\\+%\\S%\\+%$%\\&%\\x1b%\\S%\\+\ \ %#%m%\\>%\\x1b[0m\ \ %#%f,%\\s\ %#%[cefi]%[rxod]%[eir]%[a-z]%#\ %\\+%\\S%\\+%$%\\&%\\s\ %#%m%\\>\ \ %#%f,Overwrite%.%#%\\S%\\+\ \ %#%m%\\x1b[0m\ \ %#%f,%-GOverwrite%.%#\"h\"%.%#,%.%#rails\ test\ %f:%l,%+GCurrent\ version:%.%#,%+G\ %#Status\ %#Migration\ ID%.%#,%+G\ The\ fixture\ ID\ for\ %.%#,%f:\ %s\ (%m)%$%\\&%.%#/fixtures/%.%#(%\\d%\\+),%+G\ %#Prefix\ %#Verb%.%#,%+G\ %#Code\ LOC:\ %.%#,%+GAbout\ your\ application's\ environment,%+Grun\ %\\S%#::Application.routes,%+Irails\ %\\S%\\+%\\s%\\+#\ %.%#,%+Eruby:%.%#(LoadError),%+EUsage:%.%#,%+ECould\ not\ find\ generator%.%#,%+EType\ 'rails'\ for\ help.,%D(in\ %f),%\\s%#from\ %f:%l:%m,%\\s%#from\ %f:%l:,%\\s%##\ %f:%l:%m,%\\s%##\ %f:%l,%\\s%#[%f:%l:\ %#%m,%\\s%#%f:%l:\ %#%m,%\\s%#%f:%l:,%m\ [%f:%l]:,%+Erake\ aborted!,%+EDon't\ know\ how\ to\ build\ task\ %.%#,%+Einvalid\ option:%.%#,%+Irake\ %\\S%\\+%\\s%\\+#\ %.%#,chdir\ /Users/toka/rails_work/auth_cancan
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=autofmt#japanese#formatexpr()
setlocal formatoptions=mMcroql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=rails#includeexpr(v:fname)
setlocal indentexpr=GetRubyIndent(v:lnum)
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,:,.,=end,=else,=elsif,=when,=ensure,=rescue,==begin,==end,=private,=protected,=public
setlocal noinfercase
setlocal iskeyword=@,48-57,_,128-167,224-235
setlocal keywordprg=ri\ -T\ -f\ bs
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeprg=bin/rake
setlocal matchpairs=(:),{:},[:]
setlocal migemo
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=~/rails_work/auth_cancan/lib,~/rails_work/auth_cancan/vendor,~/rails_work/auth_cancan/app/models/concerns,~/rails_work/auth_cancan/app/controllers/concerns,~/rails_work/auth_cancan/app/controllers,~/rails_work/auth_cancan/app/helpers,~/rails_work/auth_cancan/app/mailers,~/rails_work/auth_cancan/app/models,~/rails_work/auth_cancan/app/jobs,~/rails_work/auth_cancan/app/*,~/rails_work/auth_cancan/app/views,~/rails_work/auth_cancan/app/views/application,~/rails_work/auth_cancan/public,~/rails_work/auth_cancan/test,~/rails_work/auth_cancan/test/unit,~/rails_work/auth_cancan/test/functional,~/rails_work/auth_cancan/test/integration,~/rails_work/auth_cancan/test/controllers,~/rails_work/auth_cancan/test/helpers,~/rails_work/auth_cancan/test/mailers,~/rails_work/auth_cancan/test/models,~/rails_work/auth_cancan/test/jobs,~/rails_work/auth_cancan/vendor/plugins/*/lib,~/rails_work/auth_cancan/vendor/plugins/*/test,~/rails_work/auth_cancan/vendor/rails/*/lib,~/rails_work/auth_cancan/vendor/rails/*/test,~/rails_work/auth
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
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=~/rails_work/auth_cancan/tags,~/rails_work/auth_cancan/tmp/tags,./tags,tags,~/.rbenv/rbenv.d/exec/gem-rehash/tags,~/.rbenv/versions/2.2.5/lib/ruby/site_ruby/2.2.0/tags,~/.rbenv/versions/2.2.5/lib/ruby/site_ruby/2.2.0/x86_64-darwin14/tags,~/.rbenv/versions/2.2.5/lib/ruby/site_ruby/tags,~/.rbenv/versions/2.2.5/lib/ruby/vendor_ruby/2.2.0/tags,~/.rbenv/versions/2.2.5/lib/ruby/vendor_ruby/2.2.0/x86_64-darwin14/tags,~/.rbenv/versions/2.2.5/lib/ruby/vendor_ruby/tags,~/.rbenv/versions/2.2.5/lib/ruby/2.2.0/tags,~/.rbenv/versions/2.2.5/lib/ruby/2.2.0/x86_64-darwin14/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 9 - ((6 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 012|
wincmd w
argglobal
edit Gemfile
let s:cpo_save=&cpo
set cpo&vim
cmap <buffer>  <Plug><cfile>
cmap <buffer>  <Plug><cword>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%\\S%\\+\ \ %#%[cefi]%[rxod]%[eir]%[a-z]%#%\\x1b[0m\ %\\+%\\S%\\+%$%\\&%\\x1b%\\S%\\+\ \ %#%m%\\>%\\x1b[0m\ \ %#%f,%\\s\ %#%[cefi]%[rxod]%[eir]%[a-z]%#\ %\\+%\\S%\\+%$%\\&%\\s\ %#%m%\\>\ \ %#%f,Overwrite%.%#%\\S%\\+\ \ %#%m%\\x1b[0m\ \ %#%f,%-GOverwrite%.%#\"h\"%.%#,%.%#rails\ test\ %f:%l,%+GCurrent\ version:%.%#,%+G\ %#Status\ %#Migration\ ID%.%#,%+G\ The\ fixture\ ID\ for\ %.%#,%f:\ %s\ (%m)%$%\\&%.%#/fixtures/%.%#(%\\d%\\+),%+G\ %#Prefix\ %#Verb%.%#,%+G\ %#Code\ LOC:\ %.%#,%+GAbout\ your\ application's\ environment,%+Grun\ %\\S%#::Application.routes,%+Irails\ %\\S%\\+%\\s%\\+#\ %.%#,%+Eruby:%.%#(LoadError),%+EUsage:%.%#,%+ECould\ not\ find\ generator%.%#,%+EType\ 'rails'\ for\ help.,%D(in\ %f),%\\s%#from\ %f:%l:%m,%\\s%#from\ %f:%l:,%\\s%##\ %f:%l:%m,%\\s%##\ %f:%l,%\\s%#[%f:%l:\ %#%m,%\\s%#%f:%l:\ %#%m,%\\s%#%f:%l:,%m\ [%f:%l]:,%+Erake\ aborted!,%+EDon't\ know\ how\ to\ build\ task\ %.%#,%+Einvalid\ option:%.%#,%+Irake\ %\\S%\\+%\\s%\\+#\ %.%#,chdir\ /Users/toka/rails_work/auth_cancan
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=autofmt#japanese#formatexpr()
setlocal formatoptions=mMcroql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=rails#includeexpr(v:fname)
setlocal indentexpr=GetRubyIndent(v:lnum)
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,:,.,=end,=else,=elsif,=when,=ensure,=rescue,==begin,==end,=private,=protected,=public
setlocal noinfercase
setlocal iskeyword=@,48-57,_,128-167,224-235
setlocal keywordprg=ri\ -T\ -f\ bs
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeprg=bin/rake
setlocal matchpairs=(:),{:},[:]
setlocal migemo
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=~/rails_work/auth_cancan/lib,~/rails_work/auth_cancan/vendor,~/rails_work/auth_cancan/app/models/concerns,~/rails_work/auth_cancan/app/controllers/concerns,~/rails_work/auth_cancan/app/controllers,~/rails_work/auth_cancan/app/helpers,~/rails_work/auth_cancan/app/mailers,~/rails_work/auth_cancan/app/models,~/rails_work/auth_cancan/app/jobs,~/rails_work/auth_cancan/app/*,~/rails_work/auth_cancan/app/views,~/rails_work/auth_cancan/test,~/rails_work/auth_cancan/test/unit,~/rails_work/auth_cancan/test/functional,~/rails_work/auth_cancan/test/integration,~/rails_work/auth_cancan/test/controllers,~/rails_work/auth_cancan/test/helpers,~/rails_work/auth_cancan/test/mailers,~/rails_work/auth_cancan/test/models,~/rails_work/auth_cancan/test/jobs,~/rails_work/auth_cancan/vendor/plugins/*/lib,~/rails_work/auth_cancan/vendor/plugins/*/test,~/rails_work/auth_cancan/vendor/rails/*/lib,~/rails_work/auth_cancan/vendor/rails/*/test,~/rails_work/auth_cancan,~/**,.**,~/.rbenv/rbenv.d/exec/gem-rehash,~/.rbenv/versions/2.2.5/lib/r
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
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=~/rails_work/auth_cancan/tags,~/rails_work/auth_cancan/tmp/tags,./tags,tags,~/.rbenv/rbenv.d/exec/gem-rehash/tags,~/.rbenv/versions/2.2.5/lib/ruby/site_ruby/2.2.0/tags,~/.rbenv/versions/2.2.5/lib/ruby/site_ruby/2.2.0/x86_64-darwin14/tags,~/.rbenv/versions/2.2.5/lib/ruby/site_ruby/tags,~/.rbenv/versions/2.2.5/lib/ruby/vendor_ruby/2.2.0/tags,~/.rbenv/versions/2.2.5/lib/ruby/vendor_ruby/2.2.0/x86_64-darwin14/tags,~/.rbenv/versions/2.2.5/lib/ruby/vendor_ruby/tags,~/.rbenv/versions/2.2.5/lib/ruby/2.2.0/tags,~/.rbenv/versions/2.2.5/lib/ruby/2.2.0/x86_64-darwin14/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 71 - ((6 * winheight(0) + 5) / 10)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
71
normal! 026|
wincmd w
exe '1resize ' . ((&lines * 26 + 20) / 40)
exe '2resize ' . ((&lines * 10 + 20) / 40)
tabedit app/models/ability.rb
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 19 + 20) / 40)
exe '2resize ' . ((&lines * 17 + 20) / 40)
argglobal
let s:cpo_save=&cpo
set cpo&vim
cmap <buffer>  <Plug><cfile>
cmap <buffer>  <Plug><cword>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%\\S%\\+\ \ %#%[cefi]%[rxod]%[eir]%[a-z]%#%\\x1b[0m\ %\\+%\\S%\\+%$%\\&%\\x1b%\\S%\\+\ \ %#%m%\\>%\\x1b[0m\ \ %#%f,%\\s\ %#%[cefi]%[rxod]%[eir]%[a-z]%#\ %\\+%\\S%\\+%$%\\&%\\s\ %#%m%\\>\ \ %#%f,Overwrite%.%#%\\S%\\+\ \ %#%m%\\x1b[0m\ \ %#%f,%-GOverwrite%.%#\"h\"%.%#,%.%#rails\ test\ %f:%l,%+GCurrent\ version:%.%#,%+G\ %#Status\ %#Migration\ ID%.%#,%+G\ The\ fixture\ ID\ for\ %.%#,%f:\ %s\ (%m)%$%\\&%.%#/fixtures/%.%#(%\\d%\\+),%+G\ %#Prefix\ %#Verb%.%#,%+G\ %#Code\ LOC:\ %.%#,%+GAbout\ your\ application's\ environment,%+Grun\ %\\S%#::Application.routes,%+Irails\ %\\S%\\+%\\s%\\+#\ %.%#,%+Eruby:%.%#(LoadError),%+EUsage:%.%#,%+ECould\ not\ find\ generator%.%#,%+EType\ 'rails'\ for\ help.,%D(in\ %f),%\\s%#from\ %f:%l:%m,%\\s%#from\ %f:%l:,%\\s%##\ %f:%l:%m,%\\s%##\ %f:%l,%\\s%#[%f:%l:\ %#%m,%\\s%#%f:%l:\ %#%m,%\\s%#%f:%l:,%m\ [%f:%l]:,%+Erake\ aborted!,%+EDon't\ know\ how\ to\ build\ task\ %.%#,%+Einvalid\ option:%.%#,%+Irake\ %\\S%\\+%\\s%\\+#\ %.%#,chdir\ /Users/toka/rails_work/auth_cancan
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=autofmt#japanese#formatexpr()
setlocal formatoptions=mMcroql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=rails#includeexpr(v:fname)
setlocal indentexpr=GetRubyIndent(v:lnum)
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,:,.,=end,=else,=elsif,=when,=ensure,=rescue,==begin,==end,=private,=protected,=public
setlocal noinfercase
setlocal iskeyword=@,48-57,_,128-167,224-235
setlocal keywordprg=ri\ -T\ -f\ bs
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeprg=bin/rake
setlocal matchpairs=(:),{:},[:]
setlocal migemo
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=~/rails_work/auth_cancan/lib,~/rails_work/auth_cancan/vendor,~/rails_work/auth_cancan/app/models/concerns,~/rails_work/auth_cancan/app/controllers/concerns,~/rails_work/auth_cancan/app/controllers,~/rails_work/auth_cancan/app/helpers,~/rails_work/auth_cancan/app/mailers,~/rails_work/auth_cancan/app/models,~/rails_work/auth_cancan/app/jobs,~/rails_work/auth_cancan/app/*,~/rails_work/auth_cancan/app/views,~/rails_work/auth_cancan/test,~/rails_work/auth_cancan/test/unit,~/rails_work/auth_cancan/test/functional,~/rails_work/auth_cancan/test/integration,~/rails_work/auth_cancan/test/controllers,~/rails_work/auth_cancan/test/helpers,~/rails_work/auth_cancan/test/mailers,~/rails_work/auth_cancan/test/models,~/rails_work/auth_cancan/test/jobs,~/rails_work/auth_cancan/vendor/plugins/*/lib,~/rails_work/auth_cancan/vendor/plugins/*/test,~/rails_work/auth_cancan/vendor/rails/*/lib,~/rails_work/auth_cancan/vendor/rails/*/test,~/rails_work/auth_cancan,~/**,.**,~/.rbenv/rbenv.d/exec/gem-rehash,~/.rbenv/versions/2.2.5/lib/r
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
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=~/rails_work/auth_cancan/tags,~/rails_work/auth_cancan/tmp/tags,./tags,tags,~/.rbenv/rbenv.d/exec/gem-rehash/tags,~/.rbenv/versions/2.2.5/lib/ruby/site_ruby/2.2.0/tags,~/.rbenv/versions/2.2.5/lib/ruby/site_ruby/2.2.0/x86_64-darwin14/tags,~/.rbenv/versions/2.2.5/lib/ruby/site_ruby/tags,~/.rbenv/versions/2.2.5/lib/ruby/vendor_ruby/2.2.0/tags,~/.rbenv/versions/2.2.5/lib/ruby/vendor_ruby/2.2.0/x86_64-darwin14/tags,~/.rbenv/versions/2.2.5/lib/ruby/vendor_ruby/tags,~/.rbenv/versions/2.2.5/lib/ruby/2.2.0/tags,~/.rbenv/versions/2.2.5/lib/ruby/2.2.0/x86_64-darwin14/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit app/controllers/customers_controller.rb
let s:cpo_save=&cpo
set cpo&vim
cmap <buffer>  <Plug><cfile>
cmap <buffer>  <Plug><cword>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%\\S%\\+\ \ %#%[cefi]%[rxod]%[eir]%[a-z]%#%\\x1b[0m\ %\\+%\\S%\\+%$%\\&%\\x1b%\\S%\\+\ \ %#%m%\\>%\\x1b[0m\ \ %#%f,%\\s\ %#%[cefi]%[rxod]%[eir]%[a-z]%#\ %\\+%\\S%\\+%$%\\&%\\s\ %#%m%\\>\ \ %#%f,Overwrite%.%#%\\S%\\+\ \ %#%m%\\x1b[0m\ \ %#%f,%-GOverwrite%.%#\"h\"%.%#,%.%#rails\ test\ %f:%l,%+GCurrent\ version:%.%#,%+G\ %#Status\ %#Migration\ ID%.%#,%+G\ The\ fixture\ ID\ for\ %.%#,%f:\ %s\ (%m)%$%\\&%.%#/fixtures/%.%#(%\\d%\\+),%+G\ %#Prefix\ %#Verb%.%#,%+G\ %#Code\ LOC:\ %.%#,%+GAbout\ your\ application's\ environment,%+Grun\ %\\S%#::Application.routes,%+Irails\ %\\S%\\+%\\s%\\+#\ %.%#,%+Eruby:%.%#(LoadError),%+EUsage:%.%#,%+ECould\ not\ find\ generator%.%#,%+EType\ 'rails'\ for\ help.,%D(in\ %f),%\\s%#from\ %f:%l:%m,%\\s%#from\ %f:%l:,%\\s%##\ %f:%l:%m,%\\s%##\ %f:%l,%\\s%#[%f:%l:\ %#%m,%\\s%#%f:%l:\ %#%m,%\\s%#%f:%l:,%m\ [%f:%l]:,%+Erake\ aborted!,%+EDon't\ know\ how\ to\ build\ task\ %.%#,%+Einvalid\ option:%.%#,%+Irake\ %\\S%\\+%\\s%\\+#\ %.%#,chdir\ /Users/toka/rails_work/auth_cancan
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=autofmt#japanese#formatexpr()
setlocal formatoptions=mMcroql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=rails#includeexpr(v:fname)
setlocal indentexpr=GetRubyIndent(v:lnum)
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,:,.,=end,=else,=elsif,=when,=ensure,=rescue,==begin,==end,=private,=protected,=public
setlocal noinfercase
setlocal iskeyword=@,48-57,_,128-167,224-235
setlocal keywordprg=ri\ -T\ -f\ bs
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeprg=bin/rake
setlocal matchpairs=(:),{:},[:]
setlocal migemo
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=~/rails_work/auth_cancan/lib,~/rails_work/auth_cancan/vendor,~/rails_work/auth_cancan/app/models/concerns,~/rails_work/auth_cancan/app/controllers/concerns,~/rails_work/auth_cancan/app/controllers,~/rails_work/auth_cancan/app/helpers,~/rails_work/auth_cancan/app/mailers,~/rails_work/auth_cancan/app/models,~/rails_work/auth_cancan/app/jobs,~/rails_work/auth_cancan/app/*,~/rails_work/auth_cancan/app/views,~/rails_work/auth_cancan/app/views/customers,~/rails_work/auth_cancan/app/views/application,~/rails_work/auth_cancan/public,~/rails_work/auth_cancan/test,~/rails_work/auth_cancan/test/unit,~/rails_work/auth_cancan/test/functional,~/rails_work/auth_cancan/test/integration,~/rails_work/auth_cancan/test/controllers,~/rails_work/auth_cancan/test/helpers,~/rails_work/auth_cancan/test/mailers,~/rails_work/auth_cancan/test/models,~/rails_work/auth_cancan/test/jobs,~/rails_work/auth_cancan/vendor/plugins/*/lib,~/rails_work/auth_cancan/vendor/plugins/*/test,~/rails_work/auth_cancan/vendor/rails/*/lib,~/rails_work/auth
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
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=~/rails_work/auth_cancan/tags,~/rails_work/auth_cancan/tmp/tags,./tags,tags,~/.rbenv/rbenv.d/exec/gem-rehash/tags,~/.rbenv/versions/2.2.5/lib/ruby/site_ruby/2.2.0/tags,~/.rbenv/versions/2.2.5/lib/ruby/site_ruby/2.2.0/x86_64-darwin14/tags,~/.rbenv/versions/2.2.5/lib/ruby/site_ruby/tags,~/.rbenv/versions/2.2.5/lib/ruby/vendor_ruby/2.2.0/tags,~/.rbenv/versions/2.2.5/lib/ruby/vendor_ruby/2.2.0/x86_64-darwin14/tags,~/.rbenv/versions/2.2.5/lib/ruby/vendor_ruby/tags,~/.rbenv/versions/2.2.5/lib/ruby/2.2.0/tags,~/.rbenv/versions/2.2.5/lib/ruby/2.2.0/x86_64-darwin14/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
wincmd w
exe '1resize ' . ((&lines * 19 + 20) / 40)
exe '2resize ' . ((&lines * 17 + 20) / 40)
tabnext 2
set stal=1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
