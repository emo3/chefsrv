# Override values within called cookbook
default['chef-server']['api_fqdn'] = nil
default['chef-server']['addons']   = { manage: nil, reporting: nil }
default['chef-server']['accept_license'] = true
# set default varibles for user-create
default['chefsrv']['user_name']  = 'admin'
default['chefsrv']['first_name'] = 'Ed'
default['chefsrv']['last_name']  = 'Overton'
default['chefsrv']['email']      = 'bogus@email.com'
default['chefsrv']['password']   = 'insecurepassword'
# set default variables for org-create
default['chefsrv']['org']        = 'emo3'
default['chefsrv']['full_org']   = 'EMOverton3 Org'
