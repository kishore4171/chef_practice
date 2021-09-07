if node['platform'] == "centos"
    node.default['package_name'] = 'httpd'
else
    node.default['package_name'] = 'apache2'
end