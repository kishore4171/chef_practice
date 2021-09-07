file '/etc/motd' do
    content 'System Information
        IP APPDRESS : #{node['ipaddress']}
        hostname: #{node['ipaddress']}
        kernel release: #{node['kernel']}
        fqdn: #{node['fqdn']}
        operating system: #{node['operating_system']}
        sda1 disk platform: #{node['/dev/sda1']} '
end
