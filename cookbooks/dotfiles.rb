execute 'clone dotfiles' do
  command "cd $HOME && rm -fr $HOME/dotfiles; git clone https://github.com/suemoc/dotfiles.git"
end
