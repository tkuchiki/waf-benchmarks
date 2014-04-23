waf-benchmarks
==============

Benchmark of web application frameworks

# Bundle install

~~~~
bundle install --path=vendor/bundle --binstubs=vendor/bin
~~~~

# Create chef cache dir

~~~~
sudo bundle exec ./bin/chef_cachedir
~~~~

# Run chef-solo

~~~~
bundle exec chef-solo -c /path/to/chef/solo.rb COOKBOOK
bundle exec chef-solo -c /path/to/chef/solo.rb -j /path/to/chef/nodes/localhost.json
~~~~