package node.default['package_name']['webserver'] do
    action :install
end

service 'nginx' do
    action [ :start, :enable ]
end

execute 'backup_index_html' do
    command 'cp /usr/share/doc/HTML/index.html /usr/share/doc/HTML/index.html.orig'
    action :run
end

template '/usr/share/doc/HTML/index.html' do
    source 'index.html.erb'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
    variables(webserver_name: node.default['package_name']['webserver'])
end

service 'nginx' do
    action [ :start, :enable ]
end
