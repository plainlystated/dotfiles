working_dir = File.expand_path(File.dirname(__FILE__))

  #oh-my-zsh
  #zshrc
%w[
  bash_profile
  bashrc
  gitconfig
  rvmrc
  tmux.conf
  vim
  vimrc
].each do |file|
  cmd = "ln -s #{File.join(working_dir, file)} ~/.#{file}"
  puts cmd
  `#{cmd}`
end

cmd = "ln -s #{File.join(working_dir, 'ssh_config')} ~/.ssh/config"
puts cmd
`#{cmd}`

#cmd = "ln -s #{File.join(working_dir, 'i3-config')} ~/.i3/config"
#puts cmd
#`#{cmd}`
