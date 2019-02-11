execute "install java" do
  command "brew cask install java"
  not_if "/usr/libexec/java_home --failfast"
end
