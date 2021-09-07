file '/etc/motd' do
    content "System Information
        IP APPDRESS : #{node['ipaddress']}
        hostname: #{node['ipaddress']}
        kernel release: #{node['kernel']['release']}
        fqdn: #{node['fqdn']}
        operating system: #{node['hostnamectl']['operating_system']}
        sda1 disk platform: #{node['filesystem']['by_device']['/dev/sda1']}
        "
end
