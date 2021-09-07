#
# Cookbook:: webtier
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

include_recipe 'webtier::haproxy'
include_recipe 'webtier::nginx'
