#
# Cookbook Name:: stow
# Recipe:: default
#
# Copyright (c) 2015 Steven Haddox

directory "#{node['stow']['path']}/src" do
  recursive true
  owner 'root'
  group 'root'
  mode '0755'
end

begin
  # Include OS platform speciic package installs
  include_recipe "stow::_#{node['platform_family']}"
rescue Chef::Exceptions::RecipeNotFound
  # If no platform match was found, install from source
  include_recipe 'stow::source'
end

template '/etc/profile.d/stow.sh'
