#!/usr/bin/env ruby

sym_links = {"/usr/local/Cellar/coreutils/8.5/bin/gdircolors" => "/usr/bin/dircolors",
              "/Volumes/STORAGE/to_backup" => "/storage"}

def create_sym_link(target,link)
    system("ln -s #{target} #{link}") unless File.exists?(link)
end

sym_links.each {|target,link| create_sym_link(target,link)}
