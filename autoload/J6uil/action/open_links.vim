
function! J6uil#action#open_links#execute()
  let text = getline(".")
  while 1
    let matched = matchlist(text, 'https\?://[0-9A-Za-z_#?~=\-+%\.\/:]\+')
    if len(matched) == 0
      break
    endif
    execute "OpenBrowser " . matched[0]
    let text = substitute(text , matched[0] , "" , "g")
  endwhile
endfunction

