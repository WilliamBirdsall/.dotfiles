vim.cmd [[
  fun! TrimWhitespace()
          let l:save = winsaveview()
              keeppatterns %s/\s\+$//e
              call winrestview(l:save)
  endfun

  augroup PERSONAL_ACS
          autocmd!
              autocmd BufWritePre * :call TrimWhitespace()
  augroup END

  " Use actual tabs for make files
  fun! SetMakefileOptions()
      if &filetype == 'make'
          setlocal noexpandtab
          setlocal tabstop=4
          setlocal shiftwidth=4
      endif
  endfun

  augroup makefile_settings
      autocmd!
          autocmd FileType make call SetMakefileOptions()
  augroup END
]]
