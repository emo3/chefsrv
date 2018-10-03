# create admin and organization
execute 'create-admin-user' do
  command "chef-server-ctl user-create #{node['chefsrv']['user_name']} \
#{node['chefsrv']['first_name']} #{node['chefsrv']['last_name']} \
#{node['chefsrv']['email']} #{node['chefsrv']['password']} \
--filename #{node['chefsrv']['user_name']}.pem"
  not_if "chef-server-ctl user-list | grep #{node['chefsrv']['user_name']}"
end

execute 'create-organization' do
  command "chef-server-ctl org-create #{node['chefsrv']['org']} \
#{node['chefsrv']['full_org']} \
--association_user #{node['chefsrv']['user_name']} \
--filename #{node['chefsrv']['org']}.pem"
  not_if "chef-server-ctl org-list | grep #{node['chefsrv']['org']}"
end
