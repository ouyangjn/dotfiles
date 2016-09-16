let vimsettings = '~/.vim/settings'
let uname = system("uname -s")

for fpath in split(globpath(vimsettings, '*.vim'), '\n')

  if (fpath == expand(vimsettings) . "/yadr-keymap-mac.vim") && uname[:4] ==? "linux"
    continue " skip mac mappings for linux
  endif

  if (fpath == expand(vimsettings) . "/yadr-keymap-linux.vim") && uname[:4] !=? "linux"
    continue " skip linux mappings for mac
  endif

  exe 'source' fpath
endfor

nmap <leader>fs :cs find s <C-R>=<cword><CR><CR>
nmap <leader>fg :cs find g <C-R>=<cword><CR><CR>
nmap <leader>fc :cs find c <C-R>=<cword><CR><CR>
nmap <leader>ft :cs find t <C-R>=<cword><CR><CR>
nmap <leader>fe :cs find e <C-R>=<cword><CR><CR>
