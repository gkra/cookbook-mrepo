#
# Cookbook Name:: mrepo
# Recipe:: install
#
# Copyright 2013, The Active Network, Inc.
#
# All rights reserved - Do Not Redistribute
#

case node['mrepo']['install_method']
when "source"
    include_recipe "mrepo::install_source"
when "github"
    include_recipe "mrepo::install_github"
when "package"
    include_recipe "mrepo::install_package"
end


