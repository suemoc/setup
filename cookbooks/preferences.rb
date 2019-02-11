execute "隠しファイルの可視化" do
  command 'defaults write com.apple.finder AppleShowAllFiles true'
end
execute "すべての拡張子を表示する" do
 command 'defaults write NSGlobalDomain AppleShowAllExtensions -bool true'
end
execute "Dockの表示位置変更" do
  command 'defaults write com.apple.dock orientation -string "right"'
end
execute "Dockを自動的に隠す" do
  command 'defaults write com.apple.dock autohide -bool true'
end
execute "Dockに標準で入っているすべてのアプリ(Finder, ごみ箱以外)を消す" do
  command 'defaults write com.apple.dock persistent-apps -array'
end
execute "キーのリピート入力認識までの時間を短くする" do
  command 'defaults write -g InitialKeyRepeat -int 13'
end
execute "キーのリピート間隔を短くする" do
  command 'defaults write -g KeyRepeat -int 2'
end
execute "ネットワークディスクで、`.DS_Store` ファイルを作らない" do
  command 'defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true'
end
execute "日付表示設定、曜日を表示" do
  command 'defaults write com.apple.menuextra.clock "DateFormat" -string "EEE H:mm"'
end
execute "スリープまたはスクリーンセーバから復帰した際、パスワードをすぐに要求する" do
  command <<-"EOS"
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
EOS
end
execute "Use scroll gesture with the Ctrl (^) modifier key to zoom" do
  command <<-"EOS"
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144
EOS
end
