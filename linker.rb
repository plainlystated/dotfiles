working_dir = File.expand_path(File.dirname(__FILE__))

%w[
  bash_profile
  bashrc
  gitconfig
  gnupg
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
