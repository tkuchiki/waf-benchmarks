waf-benchmarks
==============

Benchmark of web application frameworks

# Create chef cache dir

Execute `sudo ./bin/chef_cachedir`.

# Run chef-solo

~~~~
chef-solo -c /path/to/chef/solo.rb COOKBOOK
chef-solo -c /path/to/chef/solo.rb -j /path/to/chef/nodes/localhost.json
~~~~