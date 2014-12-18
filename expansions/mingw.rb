expand do
  load %w[expansions cygwin.rb].as_glob_pattern

  copy_to [configatron.my.windows.paths.unix_style.mingw,%w[msys 1.0]].as_glob_pattern do
    contents %w[windows mingw].as_glob_pattern
  end

  snipmate_snippets = glob(%w[shared dotfiles vim .vim_runtime bundle snipmate.vim snippets *.snippets].as_glob_pattern)
  develop_with_passion_snippets = glob(%w[shared dotfiles vim .vim_runtime bundle developwithpassion snippets *.snippets].as_glob_pattern)
  snipmate_snippets.concat(develop_with_passion_snippets).each do|file|
    merge_to [configatron.core.home, %w[.vim_runtime bundle snipmate.vim snippets],File.basename(file)].as_glob_pattern do
      dont_read_original_file_contents
      add_after_original_contents file
    end
  end

  fix_line_endings_for  [configatron.core.home, %w[.bash*]].as_glob_pattern
  fix_line_endings_for  %w[automation git *.sh].as_glob_pattern
end
