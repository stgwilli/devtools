function s:Dotnet_compile()
  set makeprg=build.bat
  set errorformat=\ %#%f(%l\\\,%c):\ %m
endfunction

command DotNetCompile :call <SID>Dotnet_compile()
