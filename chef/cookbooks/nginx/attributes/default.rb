default[:nginx] = {
  :gzip               => "on",
  :set_real_ip_from   => "0.0.0.0",
  :worker_connections => 1024,
  :worker_processes   => 1,
  :user               => "nginx",
  :vhosts             => [],
}

if node.include?(:cpu)
  if node[:cpu].include?(:total)
    default[:nginx][:worker_processes] = node[:cpu][:total]
  else
    default[:nginx][:worker_processes] = node[:cpu].size
  end
else
  if node[:platform] == "mac_os_x"
    default[:nginx][:worker_processes] = `sysctl -a | grep logicalcpu`.match(/\d$/)[0]
  end
end
