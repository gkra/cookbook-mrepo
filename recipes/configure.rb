#
# Cookbook Name:: mrepo
# Recipe:: configure
#
# Copyright 2013, The Active Network, Inc.
#
# All rights reserved - Do Not Redistribute
#

# Create the main configuration file
template '/etc/mrepo_conf' do
  source 'mrepo.conf.erb'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end

# Make sure the configuration directory exists
directory '/etc/mrepo.conf.d' do
  owner 'root'
  group 'root'
  mode  '0755'
end

# Create the repository configuration files
node['mrepo']['repos'].each do |reponame, repodata|
  template "/etc/mrepo.conf.d/#{reponame}.conf" do
    source 'mrepo_repo.conf.erb'
    owner 'root'
    group 'root'
    mode '0644'
    variables(
      :name => reponame,
      :repo => repodata
    )
    action :create
  end
end

# Make sure the apache configuration directory exists (?)
# What the heck removed this? apache2 cookbook?
directory '/etc/httpd/conf.d' do
  owner 'root'
  group 'root'
  mode  '0755'
end

# Create the apache configuration file
template '/etc/httpd/conf.d/mrepo.conf' do
  source 'apache_mrepo.conf.erb'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end

