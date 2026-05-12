" Compatibility shim — canonical colorscheme is colors/Codely.vim
" Use this file only if your setup sources it directly instead of
" relying on &runtimepath. All highlight definitions live in colors/.

let s:dir = expand('<sfile>:p:h')
if stridx(&rtp, s:dir) < 0
  execute 'set runtimepath^=' . fnameescape(s:dir)
endif
colorscheme Codely
