waf-benchmarks
==============

Benchmark of web application frameworks

# Create chef cache dir

Execute `sudo ./bin/chef_cachedir`.

# Bundle install

~~~~
bundle install --path=vendor/bundle --binstubs=vendor/bin
~~~~

# Run chef-solo

~~~~
bundle exec chef-solo -c /path/to/chef/solo.rb COOKBOOK
bundle exec chef-solo -c /path/to/chef/solo.rb -j /path/to/chef/nodes/localhost.json
~~~~