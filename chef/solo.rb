file_cache_path Chef::Config[:file_cache_path]
cookbook_path   "#{File.expand_path(File.dirname(__FILE__))}/cookbooks"
role_path       "#{File.expand_path(File.dirname(__FILE__))}/roles"
verbose_logging false
ssl_verify_mode :verify_peer
