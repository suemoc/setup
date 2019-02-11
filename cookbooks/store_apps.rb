node[:store_apps].each do |app|
  execute "install #{app}" do
    command "mas install #{app}"
    not_if "mas list | grep -q #{app}"
  end
end
