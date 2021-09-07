package node.default['package_name']['load_balancer'] do
    action :install
end

execute 'config_backup' do
    command 'cp /etc/haproxy/haproxy.cfg /etc/haproxy/haproxy.cfg.bak'
    action :run
end

cookbook_file '/etc/haproxy/haproxy.cfg' do
    source 'haproxy.cfg'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

cookbook_file '/etc/rsyslog.conf' do
    source 'rsyslog.conf'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end


service 'haproxy' do
    action [ :start, :enable ]
end

service 'rsyslog' do
    action [ :start, :enable ]
end

