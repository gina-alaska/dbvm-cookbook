#
# Cookbook Name:: dbvm-cookbook
# Recipe:: default
#
# Copyright (C) 2013 Scott Macfarlane
# 
# All rights reserved - Do Not Redistribute
#

user node['dbvm']['user']

directory node['dbvm']['home'] do
  owner node['dbvm']['user']
  group node['dbvm']['user']
  recursive true
end

execute "Extract dbvm" do
  command [
    "tar xvf",
    "#{node['dbvm']['download_cache']}/#{node['dbvm']['source']}",
    "-C #{node['dbvm']['home']}"
  ].join(" ")
  user node['dbvm']['user']
  group node['dbvm']['user']
  not_if { ::File.exists?("#{node['dbvm']['home']}/scripts/dbvm_env.bash") }
end

template "#{node['dbvm']['home']}/dbvm/scripts/dbvm_env.bash" do
  user node['dbvm']['user']
  group node['dbvm']['user']
  mode 0644
end