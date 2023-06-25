require 'fileutils'

working_dir = File.expand_path(File.dirname(__FILE__))

def link_file(repo_path, os_path)
  os_path = File.expand_path(os_path)
  if File.symlink?(os_path)
    if ENV['FORCE'] == "1"
      puts "(FORCING) deleting old file at #{os_path}"
      FileUtils.rm(os_path)
    else
      puts "Skipping (exists) #{os_path}"
      return
    end
  end

  if File.exist?(os_path)
    puts "Creating backup of #{os_path}"
    FileUtils.mv(os_path, os_path + ".0")
  end

  puts "Linking #{os_path} -> #{repo_path}"
  FileUtils.ln_s(repo_path, os_path)
end

%w[
  bash_profile
  bashrc
  gitconfig
  rvmrc
  tmux.conf
  vim
  vimrc
].each do |file|
  link_file(File.join(working_dir, file), "~/.#{file}")
end

link_file(File.join(working_dir, 'ssh_config'), "~/.ssh/config")

link_file(File.join(working_dir, 'i3_config'), "~/.config/i3/config")
link_file(File.join(working_dir, 'PrusaSlicer'), "~/.config/PrusaSlicer")
link_file(File.join(working_dir, 'PrusaSlicer-alpha'), "~/.config/PrusaSlicer-alpha")
link_file(File.join(working_dir, 'kicad'), "~/.config/kicad")

#cmd = "ln -s #{File.join(working_dir, 'i3-config')} ~/.i3/config"
#puts cmd
#`#{cmd}`
