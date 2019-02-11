execute 'Install Homebrew' do
  command 'yes "" | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'
  not_if 'test $(which /usr/local/bin/brew)'
end
