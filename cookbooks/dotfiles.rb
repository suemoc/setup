execute 'clone dotfiles' do
  user node[:user]
  command "cd $HOME && rm -fr $HOME/dotfiles; git clone https://github.com/suemoc/dotfiles.git"
end
