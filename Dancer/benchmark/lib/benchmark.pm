package benchmark;
use Dancer ':syntax';

our $VERSION = '0.1';

get '/' => sub {
    template 'index', {text => "Hello, world."};
};

true;
