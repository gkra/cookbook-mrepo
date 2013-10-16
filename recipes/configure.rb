#
# Cookbook Name:: mrepo
# Recipe:: configure
#
# Copyright 2013, The Active Network, Inc.
#
# All rights reserved - Do Not Redistribute
#

# Create the main configuration file
template "mrepo_conf" do
    path "/etc/mrepo.conf"
    source "mrepo.conf.erb"
    owner "root"
    group "root"
    mode "0644"
end

# Create the repository configuration files
node['mrepo']['repos'].each do |repo|
    template "mrepo_#{repo}_conf" do
	path "/etc/mrepo.conf.d/#{repo}.conf"
	source "mrepo_repo.conf.erb"
	owner "root"
	group "root"
	mode "0644"
    end
end

