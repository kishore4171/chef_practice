if node['platform'] == "centos"
    default['package_name']['webserver'] = ['epel-release', 'nginx']
elsif node['platform'] == "ubuntu"
    default['package_name']['webserver'] = 'apache2'
else
    default['package_name']['webserver'] = 'httpd'    
end

default['package_name']['load_balancer'] = 'haproxy'