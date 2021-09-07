#
# Cookbook:: mtfirstcookbook
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

include_recipe "mtfirstcookbook::server"
pkg = node.default['package_name']

package pkg do
    action :install
end

service pkg do
    action [:enable, :start]
end


