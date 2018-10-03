#
# Cookbook:: chefsrv
# Recipe:: default
#
# Copyright:: 2017, Ed Overton, All Rights Reserved.
include_recipe 'chef-server::default'
include_recipe 'chef-server::addons'
include_recipe 'chefsrv::post-install'
