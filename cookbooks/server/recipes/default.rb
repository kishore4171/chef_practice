#
# Cookbook:: server
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

cookbook_file '/etc/yum.repos.d/nginx.repo' do
    source 'nginx.repo'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

package 'httpd' do
    action :remove
end

package 'nginx' do
    action :install
end

directory '/testweb' do
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

template '/var/www/html/hello.html' do
    source 'hello.html.erb'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

template '/testweb/practice.conf' do
    source 'practice.erb'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

execute 'setenforce' do
    command 'setenforce 0'
    action :run
end

service 'nginx' do
    action [ :start, :enable ]
end


