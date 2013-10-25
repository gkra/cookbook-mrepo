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
node['mrepo']['repos'].each do |reponame, repodata|
    template "/etc/mrepo.conf.d/#{reponame}.conf" do
	source "mrepo_repo.conf.erb"
	owner "root"
	group "root"
	mode "0644"
	variables(
	    :name => reponame,
	    :repo => repodata
	)
	action :create
    end
end

