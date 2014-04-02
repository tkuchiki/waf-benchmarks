# Setup

## Mac OS X
~~~~
brew install plenv perl-build
echo 'if which plenv > /dev/null; then eval "$(plenv init -)"; fi' >> .bashrc
plenv install VRESION
plenv local VERSION
plenv rehash
plenv install-cpanm
plenv exec cpanm Carton
plenv exec carton install
~~~~

# Exec

~~~~
plenv exec carton exec plackup -s Starlet -E production --max-workers=10 --max-keepalive-reqs=100 --max-reqs-per-child=100 -a /path/to/benchmark/app.psgi
~~~~
